import 'dart:developer';

import 'package:care_and_cure/Common/model/doctor_model.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Controller/doctor.controller.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DoctorUpdateScreen extends StatefulWidget {
  final Doctor doctorData;
  const DoctorUpdateScreen({super.key, required this.doctorData});

  @override
  State<DoctorUpdateScreen> createState() => _DoctorUpdateScreenState();
}

class _DoctorUpdateScreenState extends State<DoctorUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              DoctorController.txtSearchController;
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        elevation: 0,
        backgroundColor: ConstrainColor.bgColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: context.screenHeight * 0.01,
            left: context.screenWidth * 0.05,
            right: context.screenWidth * 0.05,
          ),
          child: Form(
            key: DoctorController.globalKey,
            child: Column(
              children: [
                TextFormField(
                  controller: DoctorController.txtDrController[0],
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Iconsax.profile_2user),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: DoctorController.txtDrController[1],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Phone Number is required'),
                    LengthRangeValidator(
                        min: 10, max: 10, errorText: 'Enter Number In Length')
                  ]).call,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Iconsax.call),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onChanged: (value) {
                      DoctorController.txtDrController[3].text = value!;
                      log(value);
                    },
                    isExpanded: true,
                    hint: Text(
                      DoctorController.txtDrController[3].text.isEmpty
                          ? 'Select Your Gender'
                          : DoctorController.txtDrController[3].text,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "Male",
                        child: Text('Male'),
                      ),
                      DropdownMenuItem(
                        value: "Female",
                        child: Text('Female'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: DoctorController.txtDrController[4],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Age is required'),
                    LengthRangeValidator(
                        min: 2, max: 2, errorText: 'Enter a Valid Age')
                  ]).call,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Age",
                    prefixIcon: Icon(Icons.accessibility_new_rounded),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: DoctorController.txtDrController[5],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Aadhar Number is required'),
                    LengthRangeValidator(
                        min: 12,
                        max: 12,
                        errorText: 'Enter a Valid Aadhar Number'),
                  ]).call,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Aadhar Number",
                    prefixIcon: Icon(Icons.photo_camera_front_outlined),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: DoctorController.txtDrController[6],
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Address",
                    prefixIcon: Icon(Iconsax.home),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onChanged: (value) =>
                        DoctorController.txtDrController[7].text = value!,
                    isExpanded: true,
                    hint: Text(
                      DoctorController.txtDrController[7].text.isEmpty
                          ? 'Select Your Qualification'
                          : DoctorController.txtDrController[7].text,
                    ),
                    items: [
                      ...List.generate(
                        DoctorController.qualificationList.length,
                        (index) => DropdownMenuItem(
                          value: DoctorController.qualificationList[index],
                          child:
                              Text(DoctorController.qualificationList[index]),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: DoctorController.txtDrController[8],
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Specialist",
                    prefixIcon: Icon(Iconsax.eye),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(
                        context.screenWidth * 0.9,
                        context.screenHeight * 0.06,
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (DoctorController.globalKey.currentState!.validate()) {
                      await DoctorApi.updateDoctor(
                        dId: widget.doctorData.dId,
                        fullName: DoctorController.txtDrController[0].text,
                        mobileNumber: DoctorController.txtDrController[1].text,
                        gender: DoctorController.txtDrController[3].text,
                        age: DoctorController.txtDrController[4].text,
                        aadharNumber: DoctorController.txtDrController[5].text,
                        address: DoctorController.txtDrController[6].text,
                        profileLink: widget.doctorData.profileLink,
                        email: widget.doctorData.email,
                        qualification: DoctorController.txtDrController[7].text,
                        specialist: DoctorController.txtDrController[8].text,
                        hospitalRef: widget.doctorData.hospitalRef,
                      );
                      DoctorController.txtDrClearController;
                      Get.back();
                    }
                  },
                  child: const Text("Update"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
