import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:care_and_cure/Util/constrain_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget loginInfo(BuildContext context) => AnimatedContainer(
      margin: const EdgeInsets.all(10),
      duration: const Duration(
        seconds: 10,
      ),
      decoration: const BoxDecoration(
          color: ConstarinColor.bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      curve: Curves.fastOutSlowIn,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.clear_sharp,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 27,
              ),
              Text(
                ConstrainData.sideName,
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: context.screenHeight * 2 / 10,
              width: context.screenWidth * 4 / 10,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            ConstrainData.loginInfo,
            style: GoogleFonts.lato(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
