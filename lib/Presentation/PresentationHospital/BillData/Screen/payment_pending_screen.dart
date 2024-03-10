import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_refresh_indicator.dart';
import 'package:care_and_cure/Common/Widgets/common_skeleton.dart';
import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/Widgets/no_data.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Widget/bill_filtering.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Widget/common_bill_card.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/hotmail.dart';
import 'package:shimmer/shimmer.dart';

class PaymentPendingScreen extends StatefulWidget {
  const PaymentPendingScreen({super.key});

  @override
  State<PaymentPendingScreen> createState() => _PaymentPendingScreenState();
}

class _PaymentPendingScreenState extends State<PaymentPendingScreen> {
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
    CommonValues.filterData = "name";
    super.initState();
  }

  @override
  void dispose() {
    _txtSearch.clear();
    super.dispose();
  }

  final TextEditingController _txtSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> billPendingStream = FirebaseFirestore.instance
        .collection(PatientApi.patientCollection)
        .where('hospitalRef', isEqualTo: SharedPref.getHospitalHId)
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
            stream: billPendingStream,
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
                  if (int.parse(a['payAmount']) > 0) {
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
                        return Slidable(
                          endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                icon: Icons.article_outlined,
                                backgroundColor: ConstrainColor.bgAppBarColor,
                                onPressed: (context) {
                                  HapticFeedback.heavyImpact();
                                  sendMailFromOutlook(
                                      name: storedocs[index]['name'],
                                      email: storedocs[index]['email'],
                                      payableAmount: storedocs[index]
                                          ['payAmount']);
                                },
                              ),
                            ],
                          ),
                          child: shimmer
                              ? Shimmer.fromColors(
                                  baseColor: Colors.black,
                                  highlightColor: Colors.white,
                                  child: skeleton(
                                    height: context.screenHeight * 0.17,
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
                                          height: 14.5,
                                          width: 225,
                                        ),
                                        skeleton(
                                          height: 14.5,
                                          width: 225,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : commonBillCard(
                                  context,
                                  name: storedocs[index]['name'],
                                  mobileNumber: storedocs[index]
                                      ['mobileNumber'],
                                  amt: storedocs[index]['payAmount'],
                                  patientProfile: storedocs[index]['pickImage'],
                                ),
                        );
                      } else if (storedocs[index][CommonValues.filterData]
                          .toString()
                          .toLowerCase()
                          .contains(CommonValues.search.toLowerCase())) {
                        return Slidable(
                          endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                icon: Icons.article_outlined,
                                backgroundColor: ConstrainColor.bgAppBarColor,
                                onPressed: (context) {
                                  sendMailFromOutlook(
                                      name: storedocs[index]['name'],
                                      email: storedocs[index]['email'],
                                      payableAmount: storedocs[index]
                                          ['payAmount']);
                                },
                              ),
                            ],
                          ),
                          child: shimmer
                              ? Shimmer.fromColors(
                                  baseColor: Colors.black,
                                  highlightColor: Colors.white,
                                  child: skeleton(
                                    height: context.screenHeight * 0.17,
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
                                          height: 14.5,
                                          width: 225,
                                        ),
                                        skeleton(
                                          height: 14.5,
                                          width: 225,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : commonBillCard(
                                  context,
                                  name: storedocs[index]['name'],
                                  mobileNumber: storedocs[index]
                                      ['mobileNumber'],
                                  amt: storedocs[index]['payAmount'],
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

  //

  final outlookSmtp =
      hotmail(dotenv.env["OUTLOOK_EMAIL"]!, dotenv.env["OUTLOOK_PASSWORD"]!);
  sendMailFromOutlook(
      {required String name,
      required String email,
      required String payableAmount}) async {
    final message = Message()
      ..from = Address(dotenv.env["OUTLOOK_EMAIL"]!, 'Care_and_Cure')
      ..recipients.add(email)
      ..subject = ':: PAYMENT REQUEST ::'
      ..text =
          "Dear $name,\n\nI trust this message finds you well. I am writing to bring to your attention with a total amount of $payableAmount.\n\nAs per our agreed-upon terms, payment was due, and unfortunately, we have not yet received the payment. We kindly request that you process the payment at your earliest convenience to avoid any potential late fees or disruption to our ongoing services.\n\nIf you have already made the payment, please accept our thanks, and kindly disregard this reminder.\n\nWe appreciate your prompt attention to this matter and value your continued partnership. If you have any questions or concerns regarding this invoice or the payment process, please do not hesitate to contact our accounts department at ${SharedPref.getHospitalMobileNumber}.\n\nThank you for your cooperation.\n\nBest regards,\n\n${SharedPref.getHospitalName}\n${SharedPref.getHospitalEmail}\n${SharedPref.getHospitalMobileNumber}";
    try {
      final sendReport = await send(message, outlookSmtp);
      FlutterToast().showMessage("Message sent: $sendReport");
      log("Message sent: $sendReport");
    } on MailerException catch (e) {
      FlutterToast().showMessage("Message not sent.");
      log("Message not sent.");
      for (var p in e.problems) {
        FlutterToast().showMessage("Problem: ${p.code}: ${p.msg}");
        log("Problem: ${p.code}: ${p.msg}");
      }
    }
  }
}
