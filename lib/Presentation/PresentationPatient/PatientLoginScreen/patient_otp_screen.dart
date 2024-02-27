import 'package:care_and_cure/Common/Widgets/otp_screen.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_auth_api.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/controller/patient_controller.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientOtpScreen extends StatefulWidget {
  const PatientOtpScreen({super.key});

  @override
  State<PatientOtpScreen> createState() => _PatientOtpScreenState();
}

class _PatientOtpScreenState extends State<PatientOtpScreen> {
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
            FirebaseApiAuth.otpVerification(
              toNaviagte: () => const PatientController(),
            );
          },
        ));
  }
}
