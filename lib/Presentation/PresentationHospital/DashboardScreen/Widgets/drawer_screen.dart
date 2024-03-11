import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Language/language_constants.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Controller/bill_data.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Widgets/common_drawer_tile.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Screen/doctor_search_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Screen/patient_search_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/ProfileScreen/hospital_profile_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_dash_screen.dart';
import 'package:care_and_cure/Presentation/login_dash/screen/login_dash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:share_plus/share_plus.dart';

class DashDrawer extends StatefulWidget {
  const DashDrawer({super.key});

  @override
  State<DashDrawer> createState() => _DashDrawerState();
}

class _DashDrawerState extends State<DashDrawer> {
  String trueVal = "True";
  String falseVal = "False";
  late final LocalAuthentication auth;
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((bool isSupported) => setState(() {
          _supportState = isSupported;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/hospitalhomedrawerlogo.png",
                    ),
                  ),
                ),
              ),
              const Divider(),
              commonDrawerTile(
                icon: Icons.home,
                name: 'home'.tr,
                onTap: () {
                  Get.back();
                },
              ),
              commonDrawerTile(
                icon: Icons.person,
                name: 'patientDetails'.tr,
                onTap: () {
                  Get.to(() => const PatientSearchScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.groups,
                name: 'staffDetail'.tr,
                onTap: () {
                  Get.to(() => const StaffDashScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.person,
                name: 'doctorDetail'.tr,
                onTap: () {
                  Get.to(() => const DoctorSearchScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.currency_rupee_sharp,
                name: 'bill'.tr,
                onTap: () {
                  Get.to(() => const BillData());
                },
              ),
              const Divider(),
              commonDrawerText(text: "Language"),
              ExpansionTile(
                title: Row(
                  children: [
                    const Icon(Icons.language),
                    const SizedBox(
                      width: 16,
                    ),
                    Text('select'.tr),
                  ],
                ),
                children: List.generate(
                  LanguageConstants.languages.length,
                  (index) => ListTile(
                    leading: Text(LanguageConstants.languages[index].imageUrl),
                    title:
                        Text(LanguageConstants.languages[index].languageName),
                    onTap: () {
                      SharedPref.setLanguageCode =
                          LanguageConstants.languages[index].languageCode;
                      SharedPref.setCountryCode =
                          LanguageConstants.languages[index].countryCode;
                      SharedPref.setSelectedIndex = index;
                      Get.updateLocale(Locale(SharedPref.getLanguageCode,
                          SharedPref.getCountryCode));
                      Get.back();
                    },
                    textColor: SharedPref.getSelectedIndex == index
                        ? Colors.blue
                        : Colors.black,
                  ),
                ),
              ),
              const Divider(),
              commonDrawerText(text: "Profile"),
              commonDrawerTile(
                icon: Icons.person,
                name: 'profile'.tr,
                onTap: () {
                  Get.to(() => const HospitalProfileScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.logout_rounded,
                name: 'logout'.tr,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text('confirm'.tr),
                      content: Text('logoutAlert'.tr),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('no'.tr),
                        ),
                        MaterialButton(
                          onPressed: () async {
                            await HospitalFirebaseApi.signOutMethod().then(
                                (value) =>
                                    Get.offAll(() => const LoginDashScreen()));
                          },
                          child: Text('yes'.tr),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const Divider(),
              commonDrawerText(text: "Other"),
              ExpansionTile(
                title: Row(
                  children: [
                    const Icon(Icons.security),
                    const SizedBox(
                      width: 16,
                    ),
                    Text('twoFactor'.tr),
                  ],
                ),
                onExpansionChanged: (value) {
                  (_supportState)
                      ? log("This Device is Supported")
                      : {
                          FlutterToast().showMessage('deviceSupport'.tr),
                          Get.back()
                        };
                },
                children: [
                  RadioListTile(
                    title: Text('on'.tr),
                    value: trueVal,
                    groupValue: SharedPref.getTwoFactor,
                    onChanged: (value) {
                      setState(() {
                        SharedPref.setTwoFactor = value!;
                        HospitalFirebaseApi.users
                            .doc(SharedPref.getHospitalHId)
                            .update({
                          'twoFactor': SharedPref.getTwoFactor,
                        }).then((value) {
                          Get.back();
                          log("Two Factor On");
                        }).catchError((onError) {
                          log("Fail to Start Two Factor");
                        });
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('off'.tr),
                    value: falseVal,
                    groupValue: SharedPref.getTwoFactor,
                    onChanged: (value) {
                      setState(() {
                        SharedPref.setTwoFactor = value!;
                        HospitalFirebaseApi.users
                            .doc(SharedPref.getHospitalHId)
                            .update({
                          'twoFactor': SharedPref.getTwoFactor,
                        }).then((value) {
                          Get.back();
                          log("Two Factor Off");
                        }).catchError((onError) {
                          log("Fail to off Two Factor");
                        });
                      });
                    },
                  ),
                ],
              ),
              commonDrawerTile(
                icon: Icons.share,
                name: 'share'.tr,
                onTap: () {
                  Share.share('com.example.care_and_cure');
                },
              ),
              commonDrawerTile(
                icon: Icons.delete,
                name: 'deleteAccount'.tr,
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text(
                        'alert'.tr,
                        style: const TextStyle(color: Colors.red),
                      ),
                      content: Text('deleteAccError'.tr),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('no'.tr),
                        ),
                        MaterialButton(
                          onPressed: () async {
                            //
                          },
                          child: Text('yes'.tr),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
