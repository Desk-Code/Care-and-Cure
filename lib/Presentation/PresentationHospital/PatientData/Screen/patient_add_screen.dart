import 'package:care_and_cure/Common/Widgets/common_file_picker.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class PatientAddScreen extends StatefulWidget {
  const PatientAddScreen({super.key});

  @override
  State<PatientAddScreen> createState() => _PatientAddScreenState();
}

class _PatientAddScreenState extends State<PatientAddScreen> {
  @override
  void initState() {
    PatientController.txtPtClearController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'appName'.tr,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
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
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
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
                    items: [
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
                  decoration: InputDecoration(
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
                    onChanged: (value) => PatientController
                        .txtPtController[11].text = value!.toString(),
                    isExpanded: true,
                    hint: Text(
                      PatientController.txtPtController[11].text.isEmpty
                          ? 'refDoc'.tr
                          : PatientController.txtPtController[11].text,
                    ),
                    items: [
                      ...List.generate(
                        PatientApi.dataList.length,
                        (index) => DropdownMenuItem(
                          value: PatientApi.dataList[index]['dId'].toString(),
                          child: Text(PatientApi.dataList[index]['fullName']),
                        ),
                      ),
                    ],
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
                  decoration: InputDecoration(
                    labelText: 'address'.tr,
                    prefixIcon: const Icon(Iconsax.home),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: context.screenWidth * 1.80 / 2,
                  child: Obx(
                    () => ElevatedButton(
                      onPressed: (CommonValues.pickPatientLink.isEmpty)
                          ? () {
                              Get.to(() => const CommonFilePicker(),
                                  arguments: 5);
                            }
                          : null,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Iconsax.profile_add5,
                            color: Colors.black45,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'profilePick'.tr,
                            style: const TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                      await PatientApi.addPatient();
                    }
                  },
                  child: Text('submit'.tr),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
