import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Language/language_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingFourthPage extends StatefulWidget {
  const BoardingFourthPage({super.key});

  @override
  State<BoardingFourthPage> createState() => _BoardingFourthPageState();
}

class _BoardingFourthPageState extends State<BoardingFourthPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: context.screenHeight * 5 / 10,
          width: context.screenWidth * 9 / 10,
          margin: EdgeInsets.only(
            left: context.screenWidth * 0.5 / 10,
            right: context.screenWidth * 0.5 / 10,
            bottom: context.screenHeight * 0.2 / 10,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/intro_doctor.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          'rule3'.tr,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.2 / 10,
        ),
        ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                enableDrag: true,
                isScrollControlled: true,
                builder: (context) => languageList(),
              );
            },
            child: Text('select'.tr))
      ],
    );
  }
}
