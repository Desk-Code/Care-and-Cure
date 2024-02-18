import 'dart:developer';

import 'package:care_and_cure/Common/model/hospital_model.dart';
import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/hotmail.dart';

class HospitalSignupController extends GetxController {
  static HospitalSignupController get instance => Get.find();

  final key = GlobalKey<FormState>();

  RxBool isObsecure = true.obs;

  RxBool isHImage = false.obs;
  RxBool isHCertificate = false.obs;

  TextEditingController txtHospitalName = TextEditingController();
  TextEditingController txtPhoneNumber = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtUpiId = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  static final DatabaseReference db = FirebaseDatabase.instance.ref('User');

  //DateTime.now().microsecondsSinceEpoch.toString();

  // MIALING STARTING CODE
  final outlookSmtp =
      hotmail(dotenv.env["OUTLOOK_EMAIL"]!, dotenv.env["OUTLOOK_PASSWORD"]!);
  sendMailFromOutlook() async {
    final message = Message()
      ..from = Address(dotenv.env["OUTLOOK_EMAIL"]!, 'Care_and_Cure')
      ..recipients.add(txtEmail.text.trim())
      ..subject = ':: Account Verification ::'
      ..text =
          "Congratulations! Your ${txtHospitalName.text.trim()} hospital's account registration was successful. Welcome to Care_and_Cure Application Family Member! You can now log in and access our services. If you have any questions or need assistance, feel free to contact our support team.\n\n \nThank you for choosing us.";
    try {
      final sendReport = await send(message, outlookSmtp);
      log("Message sent: $sendReport");
    } on MailerException catch (e) {
      log("Message not sent.");
      for (var p in e.problems) {
        log("Problem: ${p.code}: ${p.msg}");
      }
    }
  }

// MAILING ENDING CODE

  void hospitalSignup() async {
    final newHospital = Hospital(
      hospitalName: txtHospitalName.text.trim(),
      mobileNumber: txtPhoneNumber.text.trim(),
      email: txtEmail.text.trim(),
      address: txtAddress.text.trim(),
      upiId: txtUpiId.text.trim(),
      password: txtPassword.text.trim(),
      hospitalImage: CommonValues.pickHospitalImageLink.value,
      hospitalCertificate: CommonValues.pickHospitalCertiLink.value,
    );

    String docKey = db.push().key!;

    DocumentReference store = FirebaseFirestore.instance
        .collection(HospitalFirebaseApi.hospitalCollection)
        .doc(docKey);

    store.set(newHospital.toJson()).then((value) {
      sendMailFromOutlook();
      Get.back();
      CommonValues.pickHospitalCertiLink = "".obs;
      CommonValues.pickHospitalImageLink = "".obs;
    });
  }
}
