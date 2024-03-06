import 'package:care_and_cure/Common/Services/doctor_services.dart';
import 'package:care_and_cure/Common/Services/hospital_services.dart';
import 'package:care_and_cure/Common/Services/patient_services.dart';
import 'package:care_and_cure/Presentation/login_dash/widgets/login_dashes.dart';
import 'package:care_and_cure/Presentation/login_dash/widgets/login_info.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDashScreen extends StatefulWidget {
  const LoginDashScreen({super.key});

  @override
  State<LoginDashScreen> createState() => _LoginDashScreenState();
}

class _LoginDashScreenState extends State<LoginDashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstrainColor.bgAppColor,
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
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                enableDrag: true,
                isScrollControlled: true,
                builder: (context) => loginInfo(context),
              );
            },
            icon: const Icon(
              Icons.info_outlined,
              size: 33,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          loginDash(
            context: context,
            nameOfLogin: 'patientLogin'.tr,
            onTap: () {
              HapticFeedback.heavyImpact();
              SplashServiciesForPatient.isLogin();
            },
          ),
          loginDash(
            context: context,
            nameOfLogin: 'doctorLogin'.tr,
            onTap: () {
              HapticFeedback.heavyImpact();
              SplashServiciesForDoctor.isLogin();
            },
          ),
          loginDash(
            context: context,
            nameOfLogin: 'hospitalLogin'.tr,
            onTap: () {
              HapticFeedback.heavyImpact();
              SplashServiciesForHospital.isLogin();
              // Get.to(() => const HospitalLoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
