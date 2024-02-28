import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MedicineProfile extends StatefulWidget {
  final String medicineName, medicineDescription;
  const MedicineProfile(
      {super.key,
      required this.medicineName,
      required this.medicineDescription});

  @override
  State<MedicineProfile> createState() => _MedicineProfileState();
}

class _MedicineProfileState extends State<MedicineProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
      ),
      body: Column(
        children: [
          Container(
            height: context.screenHeight * 0.3,
            width: context.screenWidth * 0.9,
            margin: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.1),
            child: Lottie.asset("assets/animation/medicine.json"),
          ),
          SizedBox(
            height: context.screenHeight * 0.05,
          ),
          Text(
            widget.medicineName,
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
            child: Text(
              widget.medicineDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 22,
                // fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
