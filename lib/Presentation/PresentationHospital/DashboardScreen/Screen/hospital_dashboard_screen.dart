import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Controller/bill_data.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Widgets/common_tile_dash.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Widgets/drawer_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Screen/doctor_search_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Screen/patient_search_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/ProfileScreen/hospital_profile_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_dash_screen.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
    HospitalFirebaseApi.getUserData(CommonValues.inputedNumber);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu_open,
              size: 28,
            ),
          );
        }),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const HospitalProfileScreen());
            },
            icon: const Icon(Icons.dashboard),
          ),
        ],
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
      drawer: const DashDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.screenHeight * 0.1,
            ),
            Text(
              "${'welcome'.tr} ${SharedPref.getHospitalName}",
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: context.screenHeight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonDash(
                  context,
                  data: 'staff'.tr,
                  onTap: () {
                    HapticFeedback.heavyImpact();
                    Get.to(() => const StaffDashScreen());
                  },
                ),
                commonDash(
                  context,
                  data: 'patient'.tr,
                  onTap: () {
                    HapticFeedback.heavyImpact();
                    Get.to(() => const PatientSearchScreen());
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonDash(
                  context,
                  data: 'doctor'.tr,
                  onTap: () {
                    HapticFeedback.heavyImpact();
                    Get.to(() => const DoctorSearchScreen());
                  },
                ),
                commonDash(
                  context,
                  data: 'bill'.tr,
                  onTap: () {
                    HapticFeedback.heavyImpact();
                    Get.to(() => const BillData());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
