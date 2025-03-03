import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingSecondPage extends StatefulWidget {
  const BoardingSecondPage({super.key});

  @override
  State<BoardingSecondPage> createState() => _BoardingSecondPageState();
}

class _BoardingSecondPageState extends State<BoardingSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(context.screenWidth * 0.05),
          height: context.screenHeight * 0.5,
          width: context.screenWidth * 0.9,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/login_dash_screen.jpg",
                ),
                fit: BoxFit.fitHeight),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'rule2'.tr,
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
