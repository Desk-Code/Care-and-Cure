import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Common/model/doctor_model.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Controller/doctor.controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Screen/doctor_add_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Screen/doctor_profile_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Widget/common_doctor_card.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Widget/doctor_filtering.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorSearchScreen extends StatefulWidget {
  const DoctorSearchScreen({super.key});

  @override
  State<DoctorSearchScreen> createState() => _DoctorSearchScreenState();
}

class _DoctorSearchScreenState extends State<DoctorSearchScreen> {
  @override
  void initState() {
    CommonValues.search = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> doctorStream = FirebaseFirestore.instance
        .collection(DoctorApi.doctorCollection)
        .where('hospitalRef', isEqualTo: SharedPref.getHospitalHId)
        .snapshots();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
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
          Get.to(() => const DoctorAddScreen());
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 7),
            child: Row(
              children: [
                SizedBox(
                  width: context.screenWidth * 0.82,
                  child: TextField(
                    controller: DoctorController.txtSearchController,
                    decoration: InputDecoration(
                      hintText: 'search'.tr,
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
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        enableDrag: true,
                        isScrollControlled: true,
                        builder: (contex) => doctorFiltering(context),
                      );
                    },
                    icon: const Icon(
                      Icons.filter_alt_outlined,
                      size: 40,
                    )),
              ],
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: doctorStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                log('Something went Wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return noData();
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
                            Get.to(
                              () => DoctorProfileScreen(
                                profileDoctorData: Doctor(
                                  dId: storedocs[index]['dId'],
                                  hospitalRef: storedocs[index]['hospitalRef'],
                                  fullName: storedocs[index]['fullName'],
                                  mobileNumber: storedocs[index]
                                      ['mobileNumber'],
                                  email: storedocs[index]['email'],
                                  age: storedocs[index]['age'],
                                  gender: storedocs[index]['gender'],
                                  address: storedocs[index]['address'],
                                  aadharNumber: storedocs[index]
                                      ['aadharNumber'],
                                  qualification: storedocs[index]
                                      ['qualification'],
                                  specialist: storedocs[index]['specialist'],
                                  profileLink: storedocs[index]['profileLink'],
                                ),
                              ),
                            );

                            CommonValues.search = "";
                            CommonValues.filterData = "fullName";
                          },
                          child: commonDoctorCard(
                            context,
                            key: storedocs[index]['dId'],
                            name: storedocs[index]['fullName'],
                            mobNum: storedocs[index]['mobileNumber'],
                            doctorProfile: storedocs[index]['profileLink'],
                            qualification: storedocs[index]['qualification'],
                          ),
                        );
                      } else if (storedocs[index][CommonValues.filterData]
                          .toString()
                          .toLowerCase()
                          .contains(CommonValues.search.toLowerCase())) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(
                              () => DoctorProfileScreen(
                                profileDoctorData: Doctor(
                                  dId: storedocs[index]['dId'],
                                  hospitalRef: storedocs[index]['hospitalRef'],
                                  fullName: storedocs[index]['fullName'],
                                  mobileNumber: storedocs[index]
                                      ['mobileNumber'],
                                  email: storedocs[index]['email'],
                                  age: storedocs[index]['age'],
                                  gender: storedocs[index]['gender'],
                                  address: storedocs[index]['address'],
                                  aadharNumber: storedocs[index]
                                      ['aadharNumber'],
                                  qualification: storedocs[index]
                                      ['qualification'],
                                  specialist: storedocs[index]['specialist'],
                                  profileLink: storedocs[index]['profileLink'],
                                ),
                              ),
                            );
                            CommonValues.search = "";
                            CommonValues.filterData = "fullName";
                          },
                          child: commonDoctorCard(
                            context,
                            key: storedocs[index]['dId'],
                            name: storedocs[index]['fullName'],
                            mobNum: storedocs[index]['mobileNumber'],
                            doctorProfile: storedocs[index]['profileLink'],
                            qualification: storedocs[index]['qualification'],
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                );
              } else {
                return noData();
              }
            },
          ),
        ],
      ),
    );
  }
}
