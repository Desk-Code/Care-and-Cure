// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:developer';
import 'dart:math' as mt;

import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Presentation/login_dash/screen/login_dash_screen.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class PatientApi {
  static String patientCollection = "Patient";

  static CollectionReference patient =
      FirebaseFirestore.instance.collection(patientCollection);

  // get doctor is registred

  static Future patientIsRegister() async {
    List dataList = [];
    try {
      await patient
          .where('mobileNumber', isEqualTo: CommonValues.inputedNumber)
          .get()
          .then((QuerySnapshot querySnapshot) =>
              querySnapshot.docs.forEach((doc) {
                dataList.add(doc.data());
                SharedPref.setPatientId = doc['pId'];
              }));
      return dataList;
    } catch (e) {
      log("$e");
      return null;
    }
  }

  // get Particular User Record
  static List dataList = [];
  static Future getUserData(String hospitalRef) async {
    dataList = [];
    CollectionReference doctorList =
        FirebaseFirestore.instance.collection(DoctorApi.doctorCollection);

    try {
      await doctorList
          .where('hospitalRef', isEqualTo: hospitalRef)
          .get()
          .then((QuerySnapshot querySnapshot) => {
                querySnapshot.docs.forEach((doc) {
                  dataList.add(doc.data());
                }),
              });
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<void> addPatient() async {
    // for date perfect formate in a adding

    List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];

    String formattedDateTime() {
      DateTime now = DateTime.now();
      return "${now.day}-${months[now.month - 1]}-${now.year}";
      // ${now.hour}:${now.minute}:${now.second}
    }

    final DatabaseReference db = FirebaseDatabase.instance.ref('User');
    String docKey = db.push().key!;
    final newPatient = Patient(
      pId: docKey,
      hospitalRef: SharedPref.getHospitalHId,
      doctorRef: PatientController.txtPtController[11].text,
      name: PatientController.txtPtController[0].text,
      mobileNumber: PatientController.txtPtController[1].text,
      email: PatientController.txtPtController[2].text,
      age: PatientController.txtPtController[3].text,
      gender: PatientController.txtPtController[4].text,
      bloodGroup: PatientController.txtPtController[5].text,
      address: PatientController.txtPtController[6].text,
      pickImage: CommonValues.pickPatientLink.value,
      disease: "",
      adminDate: formattedDateTime(),
      payAmount: "",
      roomNo: "",
      wardNo: "",
    );
    return await patient.doc(docKey).set(newPatient.toJson()).then((value) {
      FlutterToast().showMessage("User Added");
      PatientController.txtPtClearController;
      Get.back();
    }).catchError((onError) {
      FlutterToast().showMessage("Failed to Add user: $onError");
    });
  }

  // For Deleting User
  static Future<void> deletePatient({required String id}) {
    return patient.doc(id).delete().then((value) {
      log('User Deleted');
      FlutterToast().showMessage('User Deleted');
      Get.back();
    }).catchError((error) {
      log('Failed to Delete user: $error');
    });
  }

  static Future<void> updatePatient({
    required String pId,
    required String hospitalRef,
    required String doctorRef,
    required String name,
    required String mobileNumber,
    required String email,
    required String age,
    required String gender,
    required String bloodGroup,
    required String address,
    required String pickImage,
    required String disease,
    required String adminDate,
    required String payAmount,
    required String roomNo,
    required String wardNo,
  }) async {
    final newPatient = Patient(
      pId: pId,
      hospitalRef: hospitalRef,
      doctorRef: doctorRef,
      name: name,
      mobileNumber: mobileNumber,
      email: email,
      age: age,
      gender: gender,
      bloodGroup: bloodGroup,
      address: address,
      pickImage: pickImage,
      disease: disease,
      adminDate: adminDate,
      payAmount: payAmount,
      roomNo: roomNo,
      wardNo: wardNo,
    );
    return await patient.doc(pId).update(newPatient.toJson()).then((value) {
      Get.back();
      FlutterToast().showMessage("User Updated");
      log("User Updated");
    }).catchError((onError) {
      log("Failed to update Patient data : $onError");
    });
  }

  static Future<void> updateBillAndDisease(
      {required String pId,
      required String disease,
      required String amount}) async {
    int intValue = mt.Random().nextInt(25) + 1;
    List<String> charList = ["A", "B", "C", "D", "E", "F", "G", "H", "P", "Y"];
    String charValue = charList[mt.Random().nextInt(9)];
    await patient.doc(pId).update({
      'disease': disease,
      'payAmount': amount,
      'roomNo': intValue,
      'wardNo': charValue,
    }).then((value) {
      Get.back();
      FlutterToast().showMessage("User Data Updated");
      log("User Data Updated");
    }).catchError((onError) {
      log("Failed to update Patient data : $onError");
    });
  }

  static Future<void> updatePayAmount(
      {required String key, required String payAmount}) async {
    await patient.doc(key).update({
      'payAmount': payAmount,
    }).then((value) {
      log("Patient Data Updated");
    }).catchError((onError) {
      log("Failed to update Patient data : $onError");
    });
  }

  static Future<void> signOutMethod() async {
    SharedPref.setPatientUser = "";
    SharedPref.setPatientId = "";
    await FirebaseAuth.instance.signOut();
    Get.to(() => const LoginDashScreen());
  }
}
