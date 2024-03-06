import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorDashboard/controller/doctor_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorLoginScreen/doctor_login_screen.dart';
import 'package:get/get.dart';

class SplashServiciesForDoctor {
  static void isLogin() {
    String docPhNumber = SharedPref.getDoctorUser;
    if (docPhNumber != "") {
      Get.offAll(() => const DoctorDashController());
    } else {
      Get.to(() => const DoctorLoginScreen());
    }
  }
}
