import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget patientFiltering(BuildContext context) => AnimatedContainer(
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
              const Text("Sort Patient by",
                  style: TextStyle(
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
              "Name",
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
              "Mobile Number",
              style: TextStyle(
                color: (CommonValues.filterData == "mobileNumber")
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              CommonValues.filterData = "age";
              Get.back();
            },
            child: Text(
              "Age",
              style: TextStyle(
                color: (CommonValues.filterData == "age")
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              CommonValues.filterData = "disease";
              Get.back();
            },
            child: Text(
              "Disease",
              style: TextStyle(
                color: (CommonValues.filterData == "disease")
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              CommonValues.filterData = "email";
              Get.back();
            },
            child: Text(
              "Email",
              style: TextStyle(
                color: (CommonValues.filterData == "email")
                    ? Colors.blue
                    : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
