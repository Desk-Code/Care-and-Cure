import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HospitalDashBoard extends StatefulWidget {
  const HospitalDashBoard({super.key});

  @override
  State<HospitalDashBoard> createState() => _HospitalDashBoardState();
}

class _HospitalDashBoardState extends State<HospitalDashBoard> {
  @override
  void initState() {
    SharedPref.setHospitalUser =
        FirebaseAuth.instance.currentUser!.phoneNumber!;
    HospitalFirebaseApi.getUserData("9313403837");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SharedPref.setHospitalUser =
        FirebaseAuth.instance.currentUser!.phoneNumber!;
    return const Scaffold();
  }
}
