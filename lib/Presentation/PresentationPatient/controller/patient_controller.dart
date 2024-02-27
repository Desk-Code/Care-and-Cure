import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/screen/patient_medicine_screen.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/screen/patient_payment_screen.dart';
import 'package:care_and_cure/Presentation/PresentationPatient/screen/patient_profile_screen.dart';
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
              tabs: const [
                GButton(
                  icon: Icons.person_outline_rounded,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.payment,
                  text: 'payment',
                ),
                GButton(
                  icon: Icons.medical_services_outlined,
                  text: 'Medicine',
                ),
                GButton(
                  icon: Icons.logout_outlined,
                  text: 'Log Out',
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
                        title: const Text('Please Confirm'),
                        content: const Text("Do you want to logout ?"),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("No"),
                          ),
                          MaterialButton(
                            onPressed: () async {
                              await PatientApi.signOutMethod();
                            },
                            child: const Text("Yes"),
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
