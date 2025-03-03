import 'package:care_and_cure/Common/Widgets/otp_screen.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_auth_api.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorDashboard/controller/doctor_dash_controller.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorOtpScreen extends StatefulWidget {
  const DoctorOtpScreen({super.key});

  @override
  State<DoctorOtpScreen> createState() => _DoctorOtpScreenState();
}

class _DoctorOtpScreenState extends State<DoctorOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstrainColor.bgColor,
        appBar: AppBar(
          backgroundColor: ConstrainColor.bgAppBarColor,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_rounded),
          ),
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
        body: otpScreen(
          context,
          onTap: () {
            HapticFeedback.heavyImpact();
            FirebaseApiAuth.otpVerification(
              toNaviagte: () => const DoctorDashController(),
            );
          },
        ));
  }
}
