import 'package:care_and_cure/Common/Widgets/common_file_picker.dart';
import 'package:care_and_cure/Data/FirebaseData/staff_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_search_page.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
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
    CommonValues.pickStaffLink.value = "";
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
            Navigator.pop(context);
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
                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Iconsax.profile_2user),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: StaffDashController.txtStaffController[1],
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
                    onChanged: (value) =>
                        StaffDashController.txtStaffController[2].text = value!,
                    isExpanded: true,
                    hint: Text(
                      StaffDashController.txtStaffController[2].text.isEmpty
                          ? 'Select Your Gender'
                          : StaffDashController.txtStaffController[2].text,
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
                  controller: StaffDashController.txtStaffController[3],
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
                TextFormField(
                  controller: StaffDashController.txtStaffController[4],
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
                  controller: StaffDashController.txtStaffController[5],
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
                  width: context.screenWidth * 1.80 / 2,
                  child: Obx(
                    () => ElevatedButton(
                      onPressed: (CommonValues.pickStaffLink.isEmpty)
                          ? () {
                              Get.to(() => const CommonFilePicker(),
                                  arguments: 3);
                            }
                          : null,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Iconsax.profile_add5,
                            color: Colors.black45,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Profile Pick",
                            style: TextStyle(
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
                      await StaffFirebaseApi.addStaff(widget.staffSection)
                          .then((value) => Get.off(() {
                                StaffDashController.txtStaffClearController;
                                CommonValues.pickStaffLink.value = "";
                                return StaffSearchpage(
                                  selectedStaff: widget.staffSection,
                                );
                              }));
                    }
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
