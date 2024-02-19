import 'dart:developer';

import 'package:care_and_cure/Data/FirebaseData/staff_firebase_api.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Screen/hospital_dashboard_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_add_data_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Widget/common_staff_card.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class StaffSearchpage extends StatefulWidget {
  final String selectedStaff;
  const StaffSearchpage({super.key, required this.selectedStaff});

  @override
  State<StaffSearchpage> createState() => _StaffSearchpageState();
}

class _StaffSearchpageState extends State<StaffSearchpage> {
  @override
  void initState() {
    log(widget.selectedStaff);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> staffStream = FirebaseFirestore.instance
        .collection(StaffFirebaseApi.staffCollection)
        .where('staffCatagory', isEqualTo: widget.selectedStaff)
        .snapshots();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => const HospitalDashBoard());
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'appName'.tr,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => StaffAddDataScreen(
                staffSection: widget.selectedStaff,
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextField(
              controller: StaffDashController.txtSearchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: (value) {
                CommonValues.search = value;
                setState(() {});
              },
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: staffStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                log('Something went Wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Lottie.asset('assets/animation/no_data.json'),
                );
              }

              final List storedocs = [];
              snapshot.data!.docs.map((DocumentSnapshot document) {
                Map a = document.data() as Map<String, dynamic>;
                storedocs.add(a);
                a['id'] = document.id;
              }).toList();

              if (snapshot.hasData && storedocs.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: (storedocs.length),
                    itemBuilder: (context, index) {
                      if (CommonValues.search.isEmpty) {
                        return GestureDetector(
                          onTap: () {
                            //
                          },
                          child: commonStaffCard(
                            context,
                            staffSection: storedocs[index]['staffCatagory'],
                            staffSectionkey: storedocs[index]['sId'],
                            staffName: storedocs[index]['fullName'],
                            staffMobile: storedocs[index]['mobileNumber'],
                          ),
                        );
                      } else if (storedocs[index]['fullName']
                          .toString()
                          .toLowerCase()
                          .contains(CommonValues.search.toLowerCase())) {
                        return GestureDetector(
                          onTap: () {
                            //
                          },
                          child: commonStaffCard(
                            context,
                            staffSection: storedocs[index]['staffCatagory'],
                            staffSectionkey: storedocs[index]['sId'],
                            staffName: storedocs[index]['fullName'],
                            staffMobile: storedocs[index]['mobileNumber'],
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                );
              } else {
                return Center(
                    child: Lottie.asset('assets/animation/no_data.json'));
              }
            },
          ),
        ],
      ),
    );
  }
}
