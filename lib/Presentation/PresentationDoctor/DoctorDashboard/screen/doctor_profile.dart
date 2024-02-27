import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> doctorProfile = FirebaseFirestore.instance
        .collection(DoctorApi.doctorCollection)
        .where('dId', isEqualTo: SharedPref.getDoctorDId)
        .snapshots();
    return Column(
      children: [
        StreamBuilder<QuerySnapshot>(
          stream: doctorProfile,
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

            if (snapshot.hasData && storedocs.isNotEmpty) {
              return Expanded(
                child: Column(
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
                              image: NetworkImage(storedocs[0]['profileLink']),
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
                              commonText(data: "Doctor Name", size: 17),
                              commonText(data: "Mobile No", size: 17),
                              commonText(data: "Email", size: 17),
                              commonText(data: "Gender", size: 17),
                              commonText(data: "Age", size: 17),
                              commonText(data: "Aadhar Number", size: 17),
                              commonText(data: "Address", size: 17),
                              commonText(data: "Specialist", size: 17),
                              commonText(data: "Qualification", size: 17),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText(
                                  data: ":- ${storedocs[0]['fullName']}",
                                  size: 17),
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
                                  data: ":- ${storedocs[0]['aadharNumber']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['address']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['specialist']}",
                                  size: 17),
                              commonText(
                                  data: ":- ${storedocs[0]['qualification']}",
                                  size: 17),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
    );
  }
}
