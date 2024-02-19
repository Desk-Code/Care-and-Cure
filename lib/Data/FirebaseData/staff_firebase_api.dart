import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/model/staff_model.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

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
    );
    return await staff
        .doc(docKey)
        .set(newStaff.toJson())
        .then((value) => FlutterToast().showMessage("User Added"))
        .catchError((onError) =>
            FlutterToast().showMessage("Failed to Add user: $onError"));
  }
}
