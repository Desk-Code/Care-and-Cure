import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Language/language_list.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/PatientDashboard/controller/medicine_data_fetch.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/PatientDashboard/screen/patient_medicine_screen.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/PatientDashboard/screen/patient_payment_screen.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/PatientDashboard/screen/patient_profile_screen.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PatientController extends StatefulWidget {
  const PatientController({super.key});

  @override
  State<PatientController> createState() => _PatientControllerState();
}

class _PatientControllerState extends State<PatientController> {
  int _selectedIndex = 0;

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static final List _widgetOptions = [
    const PatientProfileScreen(),
    const PatientPaymentScreen(),
    const PatientMedicineScreen(),
    Container(),
  ];

  @override
  void initState() {
    SharedPref.setPatientUser = FirebaseAuth.instance.currentUser!.phoneNumber!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                enableDrag: true,
                isScrollControlled: true,
                builder: (context) => languageList(),
              );
            },
            icon: const Icon(Icons.language),
          ),
        ],
        // elevation: 20,
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: ConstrainColor.bgAppBarColor,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.person_outline_rounded,
                  text: 'profile'.tr,
                ),
                GButton(
                  icon: Icons.payment,
                  text: 'payment'.tr,
                ),
                GButton(
                  icon: Icons.medical_services_outlined,
                  text: 'medicine'.tr,
                  onPressed: () {
                    setState(() {
                      CommonValues.searchData = MedicineData.searchDataList();
                    });
                  },
                ),
                GButton(
                  icon: Icons.logout_outlined,
                  text: 'logout'.tr,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) => (index != 3)
                  ? setState(() {
                      _selectedIndex = index;
                    })
                  : showDialog(
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
                              await PatientApi.signOutMethod();
                            },
                            child: Text('yes'.tr),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
