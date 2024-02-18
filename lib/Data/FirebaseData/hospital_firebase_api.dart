// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:developer';

import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HospitalFirebaseApi {
  static String hospitalCollection = "Hospital";
  final hospitalUser = FirebaseAuth.instance.currentUser!;
  static CollectionReference users =
      FirebaseFirestore.instance.collection(hospitalCollection);

  //get docIds
  static Future getDocId() async {
    List<String> docIds = [];
    await users.get().then((snapshot) => snapshot.docs.forEach((element) {
          // log("${element.reference}");
          docIds.add(element.reference.id);
        }));
    log("$docIds");
    return docIds;
  }

  // get Particular User Record
  static Future getUserData(String phNumber) async {
    List dataList = [];
    try {
      await users
          .where('mobileNumber', isEqualTo: phNumber)
          .get()
          .then((QuerySnapshot querySnapshot) => {
                querySnapshot.docs.forEach((doc) {
                  dataList.add(doc.data());
                  SharedPref.setHospitalAddress = doc['address'];
                  SharedPref.setHospitalEmail = doc['email'];
                  SharedPref.setHospitalCertificate =
                      doc['hospitalCertificate'];
                  SharedPref.setHospitalImage = doc['hospitalImage'];
                  SharedPref.setHospitalName = doc['hospitalName'];
                  SharedPref.setHospitalMobileNumber = doc['mobileNumber'];
                  SharedPref.setHospitalPasssword = doc['password'];
                  SharedPref.setHospitalUpiId = doc['upiId'];
                }),
              });
      // log("${SharedPref.getHospitalAddress} \n ${SharedPref.getHospitalEmail} \n ${SharedPref.getHospitalCertificate} \n ${SharedPref.getHospitalImage} \n ${SharedPref.getHospitalName} \n ${SharedPref.getHospitalMobileNumber} \n ${SharedPref.getHospitalPassword} \n ${SharedPref.getHospitalUpiId} \n");

      return dataList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<void> signOutMethod() async {
    Get.dialog(
      Dialog(
        child: Center(
          child: LoadingAnimationWidget.flickr(
            leftDotColor: Colors.red.shade200,
            rightDotColor: Colors.blue.shade200,
            size: 50,
          ),
        ),
      ),
    );
    SharedPref.setHospitalUser = "";
    SharedPref.setHospitalAddress = "";
    SharedPref.setHospitalEmail = "";
    SharedPref.setHospitalCertificate = "";
    SharedPref.setHospitalImage = "";
    SharedPref.setHospitalName = "";
    SharedPref.setHospitalMobileNumber = "";
    SharedPref.setHospitalPasssword = "";
    SharedPref.setHospitalUpiId = "";
    await FirebaseAuth.instance.signOut();
    Get.back();
  }
}
