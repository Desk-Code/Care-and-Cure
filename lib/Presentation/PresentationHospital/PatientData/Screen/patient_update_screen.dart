import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PatientUpdateScreen extends StatefulWidget {
  final Patient patientData;
  const PatientUpdateScreen({super.key, required this.patientData});

  @override
  State<PatientUpdateScreen> createState() => _PatientUpdateScreenState();
}

class _PatientUpdateScreenState extends State<PatientUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
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
            key: PatientController.globalKey,
            child: Column(
              children: [
                TextFormField(
                  controller: PatientController.txtPtController[0],
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
                  controller: PatientController.txtPtController[1],
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
                TextFormField(
                  controller: PatientController.txtPtController[2],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Email is required'),
                    EmailValidator(errorText: 'Email is not a valid format'),
                  ]).call,
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'hospitalEmail'.tr,
                    prefixIcon: const Icon(Iconsax.direct),
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
                        PatientController.txtPtController[4].text = value!,
                    isExpanded: true,
                    hint: Text(
                      PatientController.txtPtController[4].text.isEmpty
                          ? 'Select Your Gender'
                          : PatientController.txtPtController[4].text,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Male',
                        child: Text('Male'),
                      ),
                      DropdownMenuItem(
                        value: 'Female',
                        child: Text('Female'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: PatientController.txtPtController[3],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Phone Number is required'),
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
                        PatientController.txtPtController[5].text = value!,
                    isExpanded: true,
                    hint: Text(
                      PatientController.txtPtController[5].text.isEmpty
                          ? 'Select Your BloodGroup'
                          : PatientController.txtPtController[5].text,
                    ),
                    items: [
                      ...List.generate(PatientController.bloodGroup.length,
                          (index) {
                        return DropdownMenuItem(
                          value: PatientController.bloodGroup[index],
                          child: Text(PatientController.bloodGroup[index]),
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: PatientController.txtPtController[6],
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
                    if (PatientController.globalKey.currentState!.validate()) {
                      await PatientApi.updatePatient(
                        pId: widget.patientData.pId,
                        hospitalRef: widget.patientData.hospitalRef,
                        doctorRef: widget.patientData.doctorRef,
                        name: PatientController.txtPtController[0].text,
                        mobileNumber: PatientController.txtPtController[1].text,
                        email: PatientController.txtPtController[2].text,
                        gender: PatientController.txtPtController[4].text,
                        age: PatientController.txtPtController[3].text,
                        bloodGroup: PatientController.txtPtController[5].text,
                        address: PatientController.txtPtController[6].text,
                        pickImage: widget.patientData.pickImage,
                        disease: widget.patientData.disease,
                        adminDate: widget.patientData.adminDate,
                        payAmount: widget.patientData.payAmount,
                        roomNo: widget.patientData.roomNo,
                        wardNo: widget.patientData.wardNo,
                      );
                      PatientController.txtPtClearController;
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
