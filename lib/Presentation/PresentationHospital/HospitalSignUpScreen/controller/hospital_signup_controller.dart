import 'package:care_and_cure/Common/model/hospital_model.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_const.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    DocumentReference store =
        FirebaseFirestore.instance.collection(hospitalCollection).doc(docKey);
    store.set(newHospital.toJson()).then((value) => Get.back());
  }
}
