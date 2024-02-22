import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Controller/patient.controller.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Screen/patient_update_screen.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientProfileScreen extends StatefulWidget {
  final Patient patientData;
  const PatientProfileScreen({super.key, required this.patientData});

  @override
  State<PatientProfileScreen> createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen> {
  @override
  void initState() {
    PatientController.txtPtClearController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgColor,
        elevation: 0,
      ),
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
                  image: NetworkImage(widget.patientData.pickImage),
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
                      commonText(data: "Full Name", size: 17),
                      commonText(data: "Mobile No", size: 17),
                      commonText(data: "Email", size: 17),
                      commonText(data: "Age", size: 17),
                      commonText(data: "Gender", size: 17),
                      commonText(data: "Blood Group", size: 17),
                      commonText(data: "Address", size: 17),
                      commonText(data: "Admin Date", size: 17),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        commonText(
                            data: ":- ${widget.patientData.name}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData.mobileNumber}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData.email}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData.age}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData.gender}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData.bloodGroup}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData.address}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData.adminDate}",
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
              PatientController.txtPtController[0].text =
                  widget.patientData.name;
              PatientController.txtPtController[1].text =
                  widget.patientData.mobileNumber;
              PatientController.txtPtController[2].text =
                  widget.patientData.email;
              PatientController.txtPtController[3].text =
                  widget.patientData.age;
              PatientController.txtPtController[4].text =
                  widget.patientData.gender;
              PatientController.txtPtController[5].text =
                  widget.patientData.bloodGroup;
              PatientController.txtPtController[6].text =
                  widget.patientData.address;
              Get.to(
                  () => PatientUpdateScreen(patientData: widget.patientData));
            },
            child: const Text("Update"),
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
              await PatientApi.deletePatient(id: widget.patientData.pId);
            },
            child: const Text("Fire"),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
