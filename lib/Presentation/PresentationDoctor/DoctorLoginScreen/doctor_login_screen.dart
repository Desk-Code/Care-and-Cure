import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/Widgets/login_phone_widget.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_auth_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorLoginScreen/doctor_otp_screen.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorLoginScreen extends StatefulWidget {
  const DoctorLoginScreen({super.key});

  @override
  State<DoctorLoginScreen> createState() => _DoctorLoginScreenState();
}

class _DoctorLoginScreenState extends State<DoctorLoginScreen> {
  bool isOnTap = false;

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
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: context.screenHeight * 0.35,
                  width: context.screenWidth,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/doctorlogin.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  'otpVerification'.tr,
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'otpVeriInfo'.tr,
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
                    List isRegister = await DoctorApi.doctorIsRegister();
                    if (isRegister.isNotEmpty) {
                      setState(() {
                        isOnTap = true;
                      });
                      await FirebaseApiAuth.sendOtp(
                        phNumber: CommonValues.phNumberValue,
                        toNavigate: () => const DoctorOtpScreen(),
                      );
                    } else {
                      FlutterToast().showMessage('register error'.tr);
                    }
                  },
                ),
              ],
            ),
            (isOnTap == true)
                ? SizedBox(
                    height: context.screenHeight * 0.8,
                    width: context.screenWidth * 1,
                    child: loadingIndicator(),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
