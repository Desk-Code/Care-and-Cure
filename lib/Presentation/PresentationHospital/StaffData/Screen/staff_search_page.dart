import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_refresh_indicator.dart';
import 'package:care_and_cure/Common/Widgets/common_skeleton.dart';
import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Common/model/staff_model.dart';
import 'package:care_and_cure/Data/FirebaseData/staff_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Screen/hospital_dashboard_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_add_data_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_profile_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Widget/common_staff_card.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Widget/satff_filtering.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class StaffSearchpage extends StatefulWidget {
  final String selectedStaff;
  const StaffSearchpage({super.key, required this.selectedStaff});

  @override
  State<StaffSearchpage> createState() => _StaffSearchpageState();
}

class _StaffSearchpageState extends State<StaffSearchpage> {
  //
  bool shimmer = false;

  void _onRefresh() async {
    setState(() {
      shimmer = true;
    });
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => setState(
        () {
          shimmer = false;
        },
      ),
    );
    CommonValues.refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(const Duration(seconds: 2));
    CommonValues.refreshController.loadComplete();
  }

  @override
  void initState() {
    _onRefresh();
    log(widget.selectedStaff);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> staffStream = FirebaseFirestore.instance
        .collection(StaffFirebaseApi.staffCollection)
        .where('staffCatagory', isEqualTo: widget.selectedStaff)
        .where('hospitalRef', isEqualTo: SharedPref.getHospitalHId)
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
      body: refreshIndicator(
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        home: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 7),
              child: Row(
                children: [
                  SizedBox(
                    width: context.screenWidth * 0.82,
                    child: TextField(
                      controller: StaffDashController.txtSearchController,
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
                          builder: (contex) => staffFiltering(
                            contex,
                            staffSection: widget.selectedStaff,
                          ),
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
              stream: staffStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
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
                                () => StaffProfileScreen(
                                  profileStaffData: Staff(
                                    hospitalRef: SharedPref.getHospitalHId,
                                    staffCatagory: storedocs[index]
                                        ['staffCatagory'],
                                    sId: storedocs[index]['sId'],
                                    fullName: storedocs[index]['fullName'],
                                    mobileNumber: storedocs[index]
                                        ['mobileNumber'],
                                    gender: storedocs[index]['gender'],
                                    age: storedocs[index]['age'],
                                    aadharNumber: storedocs[index]
                                        ['aadharNumber'],
                                    address: storedocs[index]['address'],
                                    staffProfile: storedocs[index]
                                        ['staffProfile'],
                                  ),
                                ),
                              );
                              CommonValues.search = "";
                              CommonValues.filterData = "fullName";
                            },
                            child: shimmer
                                ? Shimmer.fromColors(
                                    baseColor: Colors.black,
                                    highlightColor: Colors.white,
                                    child: skeleton(
                                      height: context.screenHeight * 0.182,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            margin: const EdgeInsets.all(11),
                                            decoration: const BoxDecoration(
                                              color: Colors.black26,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          skeleton(
                                            height: 18,
                                            width: 225,
                                          ),
                                          skeleton(
                                            height: 18,
                                            width: 225,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : commonStaffCard(
                                    context,
                                    staffSection: storedocs[index]
                                        ['staffCatagory'],
                                    staffSectionkey: storedocs[index]['sId'],
                                    staffName: storedocs[index]['fullName'],
                                    staffMobile: storedocs[index]
                                        ['mobileNumber'],
                                    staffProfile: storedocs[index]
                                        ['staffProfile'],
                                  ),
                          );
                        } else if (storedocs[index][CommonValues.filterData]
                            .toString()
                            .toLowerCase()
                            .contains(CommonValues.search.toLowerCase())) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(
                                () => StaffProfileScreen(
                                  profileStaffData: Staff(
                                    hospitalRef: SharedPref.getHospitalHId,
                                    staffCatagory: storedocs[index]
                                        ['staffCatagory'],
                                    sId: storedocs[index]['sId'],
                                    fullName: storedocs[index]['fullName'],
                                    mobileNumber: storedocs[index]
                                        ['mobileNumber'],
                                    gender: storedocs[index]['gender'],
                                    age: storedocs[index]['age'],
                                    aadharNumber: storedocs[index]
                                        ['aadharNumber'],
                                    address: storedocs[index]['address'],
                                    staffProfile: storedocs[index]
                                        ['staffProfile'],
                                  ),
                                ),
                              );
                              CommonValues.search = "";
                              CommonValues.filterData = "fullName";
                            },
                            child: shimmer
                                ? Shimmer.fromColors(
                                    baseColor: Colors.black,
                                    highlightColor: Colors.white,
                                    child: skeleton(
                                      height: context.screenHeight * 0.182,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            margin: const EdgeInsets.all(11),
                                            decoration: const BoxDecoration(
                                              color: Colors.black26,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          skeleton(
                                            height: 18,
                                            width: 225,
                                          ),
                                          skeleton(
                                            height: 18,
                                            width: 225,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : commonStaffCard(
                                    context,
                                    staffSection: storedocs[index]
                                        ['staffCatagory'],
                                    staffSectionkey: storedocs[index]['sId'],
                                    staffName: storedocs[index]['fullName'],
                                    staffMobile: storedocs[index]
                                        ['mobileNumber'],
                                    staffProfile: storedocs[index]
                                        ['staffProfile'],
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
      ),
    );
  }
}
