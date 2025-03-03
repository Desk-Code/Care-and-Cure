import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Data/FirebaseData/firebase_auth_api.dart';
import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/HospitalLoginSceen/hospital_otp_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/HospitalSignUpScreen/hospital_signup_screen.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class HospitalLoginScreen extends StatefulWidget {
  const HospitalLoginScreen({super.key});

  @override
  State<HospitalLoginScreen> createState() => _HospitalLoginScreenState();
}

class _HospitalLoginScreenState extends State<HospitalLoginScreen> {
  bool isOnTap = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    isOnTap = false;
    super.dispose();
  }

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
          children: [
            Column(
              children: [
                Container(
                  height: context.screenHeight * 0.35,
                  width: context.screenWidth * 0.8,
                  margin: EdgeInsets.only(
                    right: context.screenWidth * 0.1,
                    left: context.screenWidth * 0.1,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/intro_doctor.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.only(top: 10),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                      right: 5,
                    ),
                    height: context.screenHeight * 0.28,
                    width: context.screenWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: ConstrainColor.bgColor,
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IntlPhoneField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                            initialCountryCode: 'IN',
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              CommonValues.phNumberValue = value.completeNumber;
                              CommonValues.inputedNumber = value.number;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () async {
                              HapticFeedback.heavyImpact();
                              List isRegister =
                                  await HospitalFirebaseApi.getUserData(
                                      CommonValues.inputedNumber);
                              if (isRegister.isNotEmpty) {
                                setState(() {
                                  isOnTap = true;
                                });

                                await FirebaseApiAuth.sendOtp(
                                  phNumber: CommonValues.phNumberValue,
                                  toNavigate: () => const HospitalOtpScreen(),
                                );
                              } else {
                                FlutterToast().showMessage('register error'.tr);
                              }
                            },
                            child: Container(
                              height: context.screenHeight * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'getOtp'.tr,
                                style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'notHaveAccount'.tr,
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const HospitalSignUpScreen());
                      },
                      child: Text(
                        'register'.tr,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
