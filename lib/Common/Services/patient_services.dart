import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/PatientLoginScreen/patient_login_screen.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/controller/patient_controller.dart';
import 'package:get/get.dart';

class SplashServiciesForPatient {
  static void isLogin() {
    String patPhNumber = SharedPref.getPatientUser;
    if (patPhNumber != "") {
      Get.offAll(() => const PatientController());
    } else {
      Get.to(() => const PatientLoginScreen());
    }
  }
}
