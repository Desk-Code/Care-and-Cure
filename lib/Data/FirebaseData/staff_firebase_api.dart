import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/model/staff_model.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class StaffFirebaseApi {
  static String staffCollection = "Staff";

  static CollectionReference staff =
      FirebaseFirestore.instance.collection(staffCollection);

  static Future<void> addStaff(String staffCatagory) async {
    final DatabaseReference db = FirebaseDatabase.instance.ref('User');
    String docKey = db.push().key!;
    final newStaff = Staff(
      staffCatagory: staffCatagory,
      sId: docKey,
      fullName: StaffDashController.txtStaffController[0].text,
      mobileNumber: StaffDashController.txtStaffController[1].text,
      gender: StaffDashController.txtStaffController[2].text,
      age: StaffDashController.txtStaffController[3].text,
      aadharNumber: StaffDashController.txtStaffController[4].text,
      address: StaffDashController.txtStaffController[5].text,
      staffProfile: CommonValues.pickStaffLink.value,
      hospitalRef: SharedPref.getHospitalHId,
    );
    return await staff.doc(docKey).set(newStaff.toJson()).then((value) {
      FlutterToast().showMessage("User Added");
      StaffDashController.txtStaffClearController;
    }).catchError((onError) {
      FlutterToast().showMessage("Failed to Add user: $onError");
    });
  }

  // For Deleting User
  static Future<void> deleteUser({required String id}) {
    return staff.doc(id).delete().then((value) {
      log('User Deleted');
      Get.back();
    }).catchError((error) {
      log('Failed to Delete user: $error');
    });
  }

  static Future<void> updateUser(
      {required String staffCatagory,
      required String sId,
      required String fullName,
      required String mobileNumber,
      required String gender,
      required String age,
      required String aadharNumber,
      required String address,
      required String staffProfile}) async {
    final newStaff = Staff(
      staffCatagory: staffCatagory,
      sId: sId,
      fullName: fullName,
      mobileNumber: mobileNumber,
      gender: gender,
      age: age,
      aadharNumber: aadharNumber,
      address: address,
      staffProfile: staffProfile,
      hospitalRef: SharedPref.getHospitalHId,
    );
    return await staff.doc(sId).update(newStaff.toJson()).then((value) {
      Get.back();
      FlutterToast().showMessage("User Updated");
      log("User Updated");
    }).catchError((onError) {
      log("Failed to update staff data : $onError");
    });
  }
}
