import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_refresh_indicator.dart';
import 'package:care_and_cure/Common/Widgets/common_skeleton.dart';
import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorDashboard/screen/doctor_patient_pro.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Widget/common_patient_card.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Widget/patient_filtering.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class DoctorDashBoard extends StatefulWidget {
  const DoctorDashBoard({super.key});

  @override
  State<DoctorDashBoard> createState() => _DoctorDashBoardState();
}

class _DoctorDashBoardState extends State<DoctorDashBoard> {
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
    CommonValues.search = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> patientData = FirebaseFirestore.instance
        .collection(PatientApi.patientCollection)
        .where('doctorRef', isEqualTo: SharedPref.getDoctorDId)
        .snapshots();
    return refreshIndicator(
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
                    controller: PatientController.txtSearchController,
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
                          builder: (contex) => patientFiltering(context));
                    },
                    icon: const Icon(
                      Icons.filter_alt_outlined,
                      size: 40,
                    )),
              ],
            ),
          ),
          StreamBuilder<QuerySnapshot>(
            stream: patientData,
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
                              () => DocPatientProfile(
                                patientData: storedocs[index],
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
                              : commonPatientCard(
                                  context,
                                  key: storedocs[index]['pId'],
                                  name: storedocs[index]['name'],
                                  mobNum: storedocs[index]['mobileNumber'],
                                  patientProfile: storedocs[index]['pickImage'],
                                ),
                        );
                      } else if (storedocs[index][CommonValues.filterData]
                          .toString()
                          .toLowerCase()
                          .contains(CommonValues.search.toLowerCase())) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(
                              () => DocPatientProfile(
                                patientData: storedocs[index],
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
                              : commonPatientCard(
                                  context,
                                  key: storedocs[index]['pId'],
                                  name: storedocs[index]['name'],
                                  mobNum: storedocs[index]['mobileNumber'],
                                  patientProfile: storedocs[index]['pickImage'],
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
