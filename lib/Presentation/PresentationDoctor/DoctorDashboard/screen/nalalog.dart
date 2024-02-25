import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NalaLog extends StatefulWidget {
  const NalaLog({super.key});

  @override
  State<NalaLog> createState() => _NalaLogState();
}

class _NalaLogState extends State<NalaLog> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List _widgetOptions = [
    Text(
      'Profile',
      style: optionStyle,
    ),
    Text(
      'Dash Board',
      style: optionStyle,
    ),
    Text(
      'Log Out',
      style: optionStyle,
    ),
  ];
  @override
  void initState() {
    SharedPref.setDoctorUser = FirebaseAuth.instance.currentUser!.phoneNumber!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        elevation: 20,
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
                  icon: Icons.dashboard_outlined,
                  text: 'DashBoard',
                ),
                GButton(
                  icon: Icons.logout_outlined,
                  text: 'Log Out',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
