import 'package:care_and_cure/Common/model/hospital_model.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_const.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalSignupController extends GetxController {
  static HospitalSignupController get instance => Get.find();

  final key = GlobalKey<FormState>();

  RxBool isObsecure = true.obs;

  RxBool isHImage = false.obs;
  RxBool isHCertificate = false.obs;

  String hospitalImage = "";
  String hospitalCertificate = "";

  TextEditingController txtHospitalName = TextEditingController();
  TextEditingController txtPhoneNumber = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtUpiId = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void hospitalSignup() async {
    final newHospital = Hospital(
      hospitalName: txtHospitalName.text.trim(),
      mobileNumber: txtPhoneNumber.text.trim(),
      email: txtEmail.text.trim(),
      address: txtAddress.text.trim(),
      upiId: txtUpiId.text.trim(),
      password: txtPassword.text.trim(),
      hospitalImage: hospitalImage,
      hospitalCertificate: hospitalCertificate,
    );

    DocumentReference store = FirebaseFirestore.instance
        .collection(hospitalCollection)
        .doc(txtPhoneNumber.text.trim());
    store.set(newHospital.toJson()).then((value) => Get.back());
  }
}
