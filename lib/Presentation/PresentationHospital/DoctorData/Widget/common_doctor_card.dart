import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget commonDoctorCard(
  BuildContext context, {
  required String key,
  required String name,
  required String mobNum,
  required String doctorProfile,
  required String qualification,
}) =>
    Card(
      margin: EdgeInsets.symmetric(
        horizontal: context.screenWidth * 0.04,
        vertical: context.screenWidth * 0.02,
      ),
      elevation: 5,
      child: Container(
        height: context.screenHeight * 0.19,
        width: context.screenWidth * 0.9,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: loadingIndicator(size: 40),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage: NetworkImage(doctorProfile),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.person_pin_circle_outlined),
                    Text(key),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text("${'doctorName'.tr} : $name"),
            Text("${'mobileNo'.tr}: $mobNum"),
            Text("${'qualification'.tr}  : $qualification"),
          ],
        ),
      ),
    );
