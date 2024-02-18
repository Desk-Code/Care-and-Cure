import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Screen/hospital_dashboard_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/HospitalLoginSceen/hospital_login_screen.dart';
import 'package:get/get.dart';

class SplashServiciesForHospital {
  static void isLogin() {
    String hosPhNumber = SharedPref.getHospitalUser;
    if (hosPhNumber != "") {
      Get.offAll(() => const HospitalDashBoard());
    } else {
      Get.offAll(() => const HospitalLoginScreen());
    }
  }
}
