import 'package:care_and_cure/Common/Widgets/login_phone_widget.dart';
import 'package:care_and_cure/Common/common_values.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_auth_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/PatientLoginScreen/patient_otp_screen.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:care_and_cure/Util/constrain_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientLoginScreen extends StatefulWidget {
  const PatientLoginScreen({super.key});

  @override
  State<PatientLoginScreen> createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.screenHeight * 0.35,
              width: context.screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/patientlogin.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              ConstrainData.otpVerification,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ConstrainData.otpVeriInfo,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            loginPhoneWidget(
              context: context,
              onTap: () async {
                await FirebaseApiAuth.sendOtp(
                  context,
                  phNumber: CommonValues.phNumberValue,
                  toNavigate: (context) =>  const PatientOtpScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
