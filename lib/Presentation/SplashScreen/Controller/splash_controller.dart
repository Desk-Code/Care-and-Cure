import 'dart:async';

import 'package:care_and_cure/Presentation/BoardingScreen/boarding_screen_page.dart';
import 'package:get/get.dart';

class SpalshScreenController extends GetxController {
  static void navigateToBoarding() {
    Timer(const Duration(seconds: 7), () {
      Get.off(() => const BoardingScreenPage());
    });
  }
}
