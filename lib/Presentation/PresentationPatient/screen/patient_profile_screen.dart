import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PatientProfileScreen extends StatefulWidget {
  const PatientProfileScreen({super.key});

  @override
  State<PatientProfileScreen> createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen> {
  Stream<QuerySnapshot> patientProfile = FirebaseFirestore.instance
      .collection(PatientApi.patientCollection)
      .where('pId', isEqualTo: SharedPref.getPatientId)
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: patientProfile,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                log('Something went Wronng');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return noData();
              }

              final List storedocs = [];
              snapshot.data!.docs.map((DocumentSnapshot documnet) {
                Map a = documnet.data() as Map<String, dynamic>;
                storedocs.add(a);
                a['id'] = documnet.id;
              }).toList();

              CommonValues.payableAmount = int.parse(storedocs[0]['payAmount']);
              if (snapshot.hasData && storedocs.isNotEmpty) {
                return Column(
                  children: [
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: context.screenWidth * 0.6,
                          width: context.screenWidth * 0.6,
                          child: loadingIndicator(),
                        ),
                        Container(
                          height: context.screenWidth * 0.6,
                          width: context.screenWidth * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                context.screenWidth * 0.6),
                            image: DecorationImage(
                              image: NetworkImage(storedocs[0]['pickImage']),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    Container(
                      width: context.screenWidth * 0.9,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText(data: "Patient Name", size: 17),
                              commonText(data: "Mobile No", size: 17),
                              commonText(data: "Email", size: 17),
                              commonText(data: "Gender", size: 17),
                              commonText(data: "Age", size: 17),
                              commonText(data: "Blood Group", size: 17),
                              commonText(data: "Disease", size: 17),
                              commonText(data: "Address", size: 17),
                              commonText(data: "Admin Date", size: 17),
                              commonText(data: "Pay Amount", size: 17),
                              commonText(data: "Room No.", size: 17),
                              commonText(data: "Ward No.", size: 17),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText(
                                  data: ":- ${storedocs[0]['name']}", size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['mobileNumber']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['email']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['gender']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['age']}", size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['bloodGroup']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['disease']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['address']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['adminDate']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['payAmount']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['roomNo']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['wardNo']}",
                                  size: 17),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return noData();
              }
            },
          ),
          const SizedBox(
            height: 13,
          ),
        ],
      ),
    );
  }
}
