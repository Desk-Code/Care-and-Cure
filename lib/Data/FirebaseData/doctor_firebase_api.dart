// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/model/doctor_model.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Controller/doctor.controller.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class DoctorApi {
  static String doctorCollection = "Doctor";

  static CollectionReference doctor =
      FirebaseFirestore.instance.collection(doctorCollection);

  // get doctor is registred

  static Future doctorIsRegister() async {
    List dataList = [];
    try {
      await doctor
          .where('mobileNumber', isEqualTo: CommonValues.inputedNumber)
          .get()
          .then((QuerySnapshot querySnapshot) =>
              querySnapshot.docs.forEach((doc) {
                dataList.add(doc.data());
              }));
      return dataList;
    } catch (e) {
      log("$e");
      return null;
    }
  }

  static Future<void> addDoctor() async {
    final DatabaseReference db = FirebaseDatabase.instance.ref('User');
    String docKey = db.push().key!;
    final newDoctor = Doctor(
      dId: docKey,
      hospitalRef: SharedPref.getHospitalHId,
      fullName: DoctorController.txtDrController[0].text,
      mobileNumber: DoctorController.txtDrController[1].text,
      email: DoctorController.txtDrController[2].text,
      age: DoctorController.txtDrController[4].text,
      gender: DoctorController.txtDrController[3].text,
      address: DoctorController.txtDrController[6].text,
      aadharNumber: DoctorController.txtDrController[5].text,
      qualification: DoctorController.txtDrController[7].text,
      specialist: DoctorController.txtDrController[8].text,
      profileLink: CommonValues.pickDoctorLink.value,
    );

    return await doctor.doc(docKey).set(newDoctor.toJson()).then((value) {
      FlutterToast().showMessage("User Added");
      DoctorController.txtDrClearController;
    }).catchError((onError) {
      FlutterToast().showMessage("Failed to Add user: $onError");
    });
  }

  // For Deleting User
  static Future<void> deleteDoctor({required String id}) {
    return doctor.doc(id).delete().then((value) {
      log('User Deleted');
      FlutterToast().showMessage('User Deleted');
      Get.back();
    }).catchError((error) {
      log('Failed to Delete user: $error');
    });
  }

  static Future<void> updateDoctor({
    required String dId,
    required String fullName,
    required String mobileNumber,
    required String gender,
    required String age,
    required String aadharNumber,
    required String address,
    required String profileLink,
    required String email,
    required String qualification,
    required String specialist,
    required String hospitalRef,
  }) async {
    final newDoctor = Doctor(
      dId: dId,
      hospitalRef: hospitalRef,
      fullName: fullName,
      mobileNumber: mobileNumber,
      email: email,
      age: age,
      gender: gender,
      address: address,
      aadharNumber: aadharNumber,
      qualification: qualification,
      specialist: specialist,
      profileLink: profileLink,
    );
    return await doctor.doc(dId).update(newDoctor.toJson()).then((value) {
      Get.back();
      FlutterToast().showMessage("User Updated");
      log("User Updated");
    }).catchError((onError) {
      log("Failed to update Doctor data : $onError");
    });
  }

  static Future<void> signOutMethod() async {
    SharedPref.setDoctorUser = "";
    await FirebaseAuth.instance.signOut();
    Get.back();
  }
}
