import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorDashboard/screen/nalalog.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorLoginScreen/doctor_login_screen.dart';
import 'package:get/get.dart';

class SplashServiciesForDoctor {
  static void isLogin() {
    String docPhNumber = SharedPref.getDoctorUser;
    if (docPhNumber != "") {
      Get.offAll(() => const NalaLog());
    } else {
      Get.offAll(() => const DoctorLoginScreen());
    }
  }
}
