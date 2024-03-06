import 'package:care_and_cure/Common/Widgets/common_file_picker.dart';
import 'package:care_and_cure/Data/FirebaseData/staff_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_search_page.dart';
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

class StaffAddDataScreen extends StatefulWidget {
  final String staffSection;
  const StaffAddDataScreen({super.key, required this.staffSection});

  @override
  State<StaffAddDataScreen> createState() => _StaffAddDataScreenState();
}

class _StaffAddDataScreenState extends State<StaffAddDataScreen> {
  @override
  void initState() {
    StaffDashController.txtStaffClearController;
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
            key: StaffDashController.globalKey,
            child: Column(
              children: [
                TextFormField(
                  controller: StaffDashController.txtStaffController[0],
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
                  controller: StaffDashController.txtStaffController[1],
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
                        StaffDashController.txtStaffController[2].text = value!,
                    isExpanded: true,
                    hint: Text(
                      StaffDashController.txtStaffController[2].text.isEmpty
                          ? 'sGender'.tr
                          : StaffDashController.txtStaffController[2].text,
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
                  controller: StaffDashController.txtStaffController[3],
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
                TextFormField(
                  controller: StaffDashController.txtStaffController[4],
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'aadharIsReq'.tr),
                    LengthRangeValidator(
                        min: 12, max: 12, errorText: 'validAadhar'.tr),
                  ]).call,
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'adharNumber'.tr,
                    prefixIcon: const Icon(Icons.photo_camera_front_outlined),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: StaffDashController.txtStaffController[5],
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
                      onPressed: (CommonValues.pickStaffLink.isEmpty)
                          ? () {
                              Get.to(() => const CommonFilePicker(),
                                  arguments: 3);
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
                    if (StaffDashController.globalKey.currentState!
                        .validate()) {
                      HapticFeedback.heavyImpact();
                      await StaffFirebaseApi.addStaff(widget.staffSection)
                          .then((value) {
                        Get.back();
                        return Get.off(() {
                          return StaffSearchpage(
                            selectedStaff: widget.staffSection,
                          );
                        });
                      });
                    }
                  },
                  child: Text('submit'.tr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
