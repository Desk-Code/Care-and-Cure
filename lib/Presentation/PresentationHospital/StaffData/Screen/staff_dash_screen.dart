import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Screen/hospital_dashboard_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_search_page.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Widget/common_staff_dash.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffDashScreen extends StatefulWidget {
  const StaffDashScreen({super.key});

  @override
  State<StaffDashScreen> createState() => _StaffDashScreenState();
}

class _StaffDashScreenState extends State<StaffDashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => const HospitalDashBoard());
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
        child: Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            spacing: 7,
            children: List.generate(
              StaffDashController.staffField.length,
              (index) => commonStaffDash(
                context,
                data: StaffDashController.staffField[index],
                assetUrl: StaffDashController.assetUrl[index],
                onTap: () {
                  Get.to(
                    () => StaffSearchpage(
                        selectedStaff: StaffDashController.staffField[index]),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
