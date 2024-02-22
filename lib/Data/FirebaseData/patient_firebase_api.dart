// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class PatientApi {
  static String patientCollection = "Patient";

  static CollectionReference patient =
      FirebaseFirestore.instance.collection(patientCollection);

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
  static Future<void> deleteDoctor({required String id}) {
    return patient.doc(id).delete().then((value) {
      log('User Deleted');
      FlutterToast().showMessage('User Deleted');
      Get.back();
    }).catchError((error) {
      log('Failed to Delete user: $error');
    });
  }

  // static Future<void> updateDoctor({
  //   required String dId,
  //   required String fullName,
  //   required String mobileNumber,
  //   required String gender,
  //   required String age,
  //   required String aadharNumber,
  //   required String address,
  //   required String profileLink,
  //   required String email,
  //   required String qualification,
  //   required String specialist,
  //   required String hospitalRef,
  // }) async {
  //   final newDoctor = Doctor(
  //     dId: dId,
  //     hospitalRef: hospitalRef,
  //     fullName: fullName,
  //     mobileNumber: mobileNumber,
  //     email: email,
  //     age: age,
  //     gender: gender,
  //     address: address,
  //     aadharNumber: aadharNumber,
  //     qualification: qualification,
  //     specialist: specialist,
  //     profileLink: profileLink,
  //   );
  //   return await doctor.doc(dId).update(newDoctor.toJson()).then((value) {
  //     Get.back();
  //     FlutterToast().showMessage("User Updated");
  //     log("User Updated");
  //   }).catchError((onError) {
  //     log("Failed to update Doctor data : $onError");
  //   });
  // }
}
