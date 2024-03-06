import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget billFiltering(BuildContext context) => AnimatedContainer(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('sortbillby'.tr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              CommonValues.filterData = "name";
              Get.back();
            },
            child: Text(
              'name'.tr,
              style: TextStyle(
                color: (CommonValues.filterData == "name")
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              CommonValues.filterData = "mobileNumber";
              Get.back();
            },
            child: Text(
              'mobileNo'.tr,
              style: TextStyle(
                color: (CommonValues.filterData == "mobileNumber")
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
