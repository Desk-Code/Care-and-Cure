import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Common/model/doctor_model.dart';
import 'package:care_and_cure/Data/FirebaseData/doctor_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Controller/doctor.controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Screen/doctor_update_screen.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DoctorProfileScreen extends StatefulWidget {
  final Doctor profileDoctorData;
  const DoctorProfileScreen({super.key, required this.profileDoctorData});

  @override
  State<DoctorProfileScreen> createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgColor,
        elevation: 0,
      ),
      backgroundColor: ConstrainColor.bgColor,
      body: Column(
        children: [
          Stack(children: [
            SizedBox(
              height: context.screenWidth * 0.5,
              width: context.screenWidth * 0.5,
              child: loadingIndicator(),
            ),
            Container(
              height: context.screenWidth * 0.5,
              width: context.screenWidth * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(context.screenWidth * 0.5),
                image: DecorationImage(
                  image: NetworkImage(widget.profileDoctorData.profileLink),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              width: context.screenWidth * 0.9,
              margin:
                  EdgeInsets.symmetric(horizontal: context.screenWidth * 0.05),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText(data: 'fullName'.tr, size: 17),
                      commonText(data: 'mobileNo'.tr, size: 17),
                      commonText(data: 'gender'.tr, size: 17),
                      commonText(data: 'age'.tr, size: 17),
                      commonText(data: 'email'.tr, size: 17),
                      commonText(data: 'adharNumber'.tr, size: 17),
                      commonText(data: 'address'.tr, size: 17),
                      commonText(data: 'qualification'.tr, size: 17),
                      commonText(data: 'specialist'.tr, size: 17),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        commonText(
                            data: ":- ${widget.profileDoctorData.fullName}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.mobileNumber}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.gender}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.age}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.email}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.aadharNumber}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.address}",
                            size: 17),
                        commonText(
                            data:
                                ":- ${widget.profileDoctorData.qualification}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileDoctorData.specialist}",
                            size: 17),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
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
            onPressed: () {
              DoctorController.txtDrController[0].text =
                  widget.profileDoctorData.fullName;
              DoctorController.txtDrController[1].text =
                  widget.profileDoctorData.mobileNumber;
              DoctorController.txtDrController[3].text =
                  widget.profileDoctorData.gender;
              DoctorController.txtDrController[4].text =
                  widget.profileDoctorData.age;
              DoctorController.txtDrController[5].text =
                  widget.profileDoctorData.aadharNumber;
              DoctorController.txtDrController[6].text =
                  widget.profileDoctorData.address;
              DoctorController.txtDrController[7].text =
                  widget.profileDoctorData.qualification;
              DoctorController.txtDrController[8].text =
                  widget.profileDoctorData.specialist;
              Get.to(() =>
                  DoctorUpdateScreen(doctorData: widget.profileDoctorData));
            },
            child: Text('update'.tr),
          ),
          const SizedBox(
            height: 20,
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
              HapticFeedback.heavyImpact();
              await DoctorApi.deleteDoctor(
                id: widget.profileDoctorData.dId,
              );
            },
            child: Text('fire'.tr),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
