import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Screen/patient_add_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Screen/patient_profile_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Widget/common_patient_card.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Widget/patient_filtering.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientSearchScreen extends StatefulWidget {
  const PatientSearchScreen({super.key});

  @override
  State<PatientSearchScreen> createState() => _PatientSearchScreenState();
}

class _PatientSearchScreenState extends State<PatientSearchScreen> {
  @override
  void initState() {
    CommonValues.search = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> patientStream = FirebaseFirestore.instance
        .collection(PatientApi.patientCollection)
        .where("hospitalRef", isEqualTo: SharedPref.getHospitalHId)
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
        onPressed: () async {
          await PatientApi.getUserData(SharedPref.getHospitalHId)
              .then((value) => Get.to(() => const PatientAddScreen()));
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
                    controller: PatientController.txtSearchController,
                    decoration: InputDecoration(
                      hintText: "Search",
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
            stream: patientStream,
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
                              () => PatientProfileScreen(
                                patientData: Patient(
                                  pId: storedocs[index]['pId'],
                                  hospitalRef: storedocs[index]['hospitalRef'],
                                  doctorRef: storedocs[index]['doctorRef'],
                                  name: storedocs[index]['name'],
                                  mobileNumber: storedocs[index]
                                      ['mobileNumber'],
                                  email: storedocs[index]['email'],
                                  age: storedocs[index]['age'],
                                  gender: storedocs[index]['gender'],
                                  bloodGroup: storedocs[index]['bloodGroup'],
                                  address: storedocs[index]['address'],
                                  pickImage: storedocs[index]['pickImage'],
                                  disease: storedocs[index]['disease'],
                                  adminDate: storedocs[index]['adminDate'],
                                  payAmount: storedocs[index]['payAmount'],
                                  roomNo: storedocs[index]['roomNo'],
                                  wardNo: storedocs[index]['wardNo'],
                                ),
                              ),
                            );

                            CommonValues.search = "";
                            CommonValues.filterData = "fullName";
                          },
                          child: commonPatientCard(
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
                              () => PatientProfileScreen(
                                patientData: Patient(
                                  pId: storedocs[index]['pId'],
                                  hospitalRef: storedocs[index]['hospitalRef'],
                                  doctorRef: storedocs[index]['doctorRef'],
                                  name: storedocs[index]['name'],
                                  mobileNumber: storedocs[index]
                                      ['mobileNumber'],
                                  email: storedocs[index]['email'],
                                  age: storedocs[index]['age'],
                                  gender: storedocs[index]['gender'],
                                  bloodGroup: storedocs[index]['bloodGroup'],
                                  address: storedocs[index]['address'],
                                  pickImage: storedocs[index]['pickImage'],
                                  disease: storedocs[index]['disease'],
                                  adminDate: storedocs[index]['adminDate'],
                                  payAmount: storedocs[index]['payAmount'],
                                  roomNo: storedocs[index]['roomNo'],
                                  wardNo: storedocs[index]['wardNo'],
                                ),
                              ),
                            );
                            CommonValues.search = "";
                            CommonValues.filterData = "fullName";
                          },
                          child: commonPatientCard(
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
