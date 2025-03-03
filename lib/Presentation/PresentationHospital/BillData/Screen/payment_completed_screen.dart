import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Widget/bill_filtering.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Widget/common_bill_card.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentCompletedScreen extends StatefulWidget {
  const PaymentCompletedScreen({super.key});

  @override
  State<PaymentCompletedScreen> createState() => _PaymentCompletedScreenState();
}

class _PaymentCompletedScreenState extends State<PaymentCompletedScreen> {
  final TextEditingController _txtSearch = TextEditingController();
  @override
  void initState() {
    CommonValues.search = "";
    CommonValues.filterData = "name";
    super.initState();
  }

  @override
  void dispose() {
    _txtSearch.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> billCompletedStream = FirebaseFirestore.instance
        .collection(PatientApi.patientCollection)
        .where('hospitalRef', isEqualTo: SharedPref.getHospitalHId)
        .snapshots();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 7),
          child: Row(
            children: [
              SizedBox(
                width: context.screenWidth * 0.82,
                child: TextField(
                  controller: _txtSearch,
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
                      builder: (contex) => billFiltering(context),
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
          stream: billCompletedStream,
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
              if (a['payAmount'] != "") {
                if (int.parse(a['payAmount']) == 0) {
                  storedocs.add(a);
                  a['id'] = document.id;
                }
              }
            }).toList();

            if (snapshot.hasData && storedocs.isNotEmpty) {
              return Expanded(
                child: ListView.builder(
                  itemCount: (storedocs.length),
                  itemBuilder: (context, index) {
                    if (CommonValues.search.isEmpty) {
                      return commonBillCard(
                        context,
                        name: storedocs[index]['name'],
                        mobileNumber: storedocs[index]['mobileNumber'],
                        amt: storedocs[index]['payAmount'],
                        patientProfile: storedocs[index]['pickImage'],
                      );
                    } else if (storedocs[index][CommonValues.filterData]
                        .toString()
                        .toLowerCase()
                        .contains(CommonValues.search.toLowerCase())) {
                      return commonBillCard(
                        context,
                        name: storedocs[index]['name'],
                        mobileNumber: storedocs[index]['mobileNumber'],
                        amt: storedocs[index]['payAmount'],
                        patientProfile: storedocs[index]['pickImage'],
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
    );
  }
}
