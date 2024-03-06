import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Language/language_constants.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget languageList() => AnimatedContainer(
      margin: const EdgeInsets.all(10),
      duration: const Duration(
        seconds: 10,
      ),
      decoration: const BoxDecoration(
          color: ConstrainColor.bgColor,
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
                  Get.back();
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
                'select'.tr,
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ...List.generate(
            LanguageConstants.languages.length,
            (index) => ListTile(
              leading: Text(LanguageConstants.languages[index].imageUrl),
              title: Text(LanguageConstants.languages[index].languageName),
              onTap: () {
                SharedPref.setLanguageCode =
                    LanguageConstants.languages[index].languageCode;
                SharedPref.setCountryCode =
                    LanguageConstants.languages[index].countryCode;
                SharedPref.setSelectedIndex = index;
                Get.updateLocale(Locale(
                    SharedPref.getLanguageCode, SharedPref.getCountryCode));
                Get.back();
              },
              textColor: SharedPref.getSelectedIndex == index
                  ? Colors.blue
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
