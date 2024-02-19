import 'dart:developer';

import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Screen/hospital_dashboard_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_add_data_screen.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffSearchpage extends StatefulWidget {
  final String selectedStaff;
  const StaffSearchpage({super.key, required this.selectedStaff});

  @override
  State<StaffSearchpage> createState() => _StaffSearchpageState();
}

class _StaffSearchpageState extends State<StaffSearchpage> {
  @override
  void initState() {
    log(widget.selectedStaff);
    super.initState();
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => StaffAddDataScreen(
                staffSection: widget.selectedStaff,
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: TextField(
              controller: StaffDashController.txtSearchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: (value) {
                CommonValues.search = value;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
