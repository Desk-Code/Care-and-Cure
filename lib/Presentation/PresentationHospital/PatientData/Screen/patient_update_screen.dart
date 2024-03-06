import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                  decoration:  InputDecoration(
                    labelText: 'fullName'.tr,
                    prefixIcon: const Icon(Iconsax.profile_2user),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: PatientController.txtPtController[1],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'phIsReq'.tr),
                    LengthRangeValidator(
                        min: 10, max: 10, errorText: 'entInLength'.tr)
                  ]).call,
                  expands: false,
                  decoration:  InputDecoration(
                    labelText: 'mobileNo'.tr,
                    prefixIcon: const Icon(Iconsax.call),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: PatientController.txtPtController[2],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'emailIsReq'.tr),
                    EmailValidator(errorText: 'validEmail'.tr),
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
                          ? 'sGender'.tr
                          : PatientController.txtPtController[4].text,
                    ),
                    items:  [
                      DropdownMenuItem(
                        value: 'Male',
                        child: Text('male'.tr),
                      ),
                      DropdownMenuItem(
                        value: 'Female',
                        child: Text('female'.tr),
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
                    RequiredValidator(errorText: 'ageIsReq'.tr),
                    LengthRangeValidator(
                        min: 2, max: 2, errorText: 'validRange'.tr)
                  ]).call,
                  expands: false,
                  decoration:  InputDecoration(
                    labelText: 'age'.tr,
                    prefixIcon: const Icon(Icons.accessibility_new_rounded),
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
                          ? 'sBloodGroup'.tr
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
                  decoration:  InputDecoration(
                    labelText: 'address'.tr,
                    prefixIcon: const Icon(Iconsax.home),
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
                      HapticFeedback.heavyImpact();
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
                  child:  Text('update'.tr),
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
