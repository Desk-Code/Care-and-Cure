import 'package:care_and_cure/Presentation/BoardingScreen/controller/boarding_screen.controller.dart';
import 'package:care_and_cure/Presentation/login_dash/screen/login_dash_screen.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingScreenPage extends StatefulWidget {
  const BoardingScreenPage({super.key});

  @override
  State<BoardingScreenPage> createState() => _BoardingScreenPageState();
}

class _BoardingScreenPageState extends State<BoardingScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstrainColor.bgColor,
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        title: Text(
          'appName'.tr,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          PageView(
            controller: BoardingController.pageController,
            onPageChanged: (value) {
              BoardingController.onLastPage =
                  (value == (BoardingController.screens.length - 1))
                      ? true
                      : false;
              setState(() {});
            },
            children: BoardingController.screens,
          ),
          Container(
            alignment: const Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    BoardingController.pageController.previousPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                  },
                  child: Text('previous'.tr),
                ),
                SmoothPageIndicator(
                  controller: BoardingController.pageController,
                  count: BoardingController.screens.length,
                ),
                (BoardingController.onLastPage)
                    ? ElevatedButton(
                        onPressed: () {
                          HapticFeedback.heavyImpact();
                          Get.off(
                            () => const LoginDashScreen(),
                          );
                        },
                        child: Text('start'.tr),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          BoardingController.pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text('next'.tr),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
