import 'package:care_and_cure/Common/Widgets/otp_screen.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_auth_api.dart';
import 'package:care_and_cure/Presentation/SplashScreen/Screen/splash_screen_page.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:care_and_cure/Util/constrain_data.dart';
import 'package:flutter/material.dart';
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
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_rounded),
          ),
          title: Text(
            ConstrainData.appName,
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
              context,
              toNaviagte: (context) => const SplashScreenPage(),
            );
          },
        ));
  }
}
