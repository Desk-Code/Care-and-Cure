import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Common/model/staff_model.dart';
import 'package:care_and_cure/Data/FirebaseData/staff_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Controller/staff_dash_controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_update_data_screen.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class StaffProfileScreen extends StatefulWidget {
  final Staff profileStaffData;
  const StaffProfileScreen({super.key, required this.profileStaffData});

  @override
  State<StaffProfileScreen> createState() => _StaffProfileScreenState();
}

class _StaffProfileScreenState extends State<StaffProfileScreen> {
  bool isLoaderOn = true;

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
                  image: NetworkImage(widget.profileStaffData.staffProfile),
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
                      commonText(data: 'staffSection'.tr, size: 17),
                      commonText(data: 'adharNumber'.tr, size: 17),
                      commonText(data: 'address'.tr, size: 17),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        commonText(
                            data: ":- ${widget.profileStaffData.fullName}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileStaffData.mobileNumber}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileStaffData.gender}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileStaffData.age}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileStaffData.staffCatagory}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileStaffData.aadharNumber}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.profileStaffData.address}",
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
              StaffDashController.txtStaffController[0].text =
                  widget.profileStaffData.fullName;
              StaffDashController.txtStaffController[1].text =
                  widget.profileStaffData.mobileNumber;
              StaffDashController.txtStaffController[2].text =
                  widget.profileStaffData.gender;
              StaffDashController.txtStaffController[3].text =
                  widget.profileStaffData.age;
              StaffDashController.txtStaffController[4].text =
                  widget.profileStaffData.aadharNumber;
              StaffDashController.txtStaffController[5].text =
                  widget.profileStaffData.address;
              Get.to(() => StaffUpdateData(staffData: widget.profileStaffData));
            },
            child:  Text('update'.tr),
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
              await StaffFirebaseApi.deleteUser(
                  id: widget.profileStaffData.sId);
            },
            child:  Text('fire'.tr),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
