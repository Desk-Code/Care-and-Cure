import 'package:care_and_cure/Common/Widgets/common_loader.dart';
import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/PresentationDoctor/DoctorDashboard/screen/add_diease_page.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DocPatientProfile extends StatefulWidget {
  final Map patientData;
  const DocPatientProfile({super.key, required this.patientData});

  @override
  State<DocPatientProfile> createState() => _DocPatientProfileState();
}

class _DocPatientProfileState extends State<DocPatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstrainColor.bgAppBarColor,
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 13,
            ),
            Stack(
              children: [
                SizedBox(
                  height: context.screenWidth * 0.6,
                  width: context.screenWidth * 0.6,
                  child: loadingIndicator(),
                ),
                Container(
                  height: context.screenWidth * 0.6,
                  width: context.screenWidth * 0.6,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(context.screenWidth * 0.6),
                    image: DecorationImage(
                      image: NetworkImage(widget.patientData['pickImage']),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: context.screenWidth * 0.9,
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
                        commonText(data: "Patient Name", size: 17),
                        commonText(data: "Mobile No", size: 17),
                        commonText(data: "Email", size: 17),
                        commonText(data: "Gender", size: 17),
                        commonText(data: "Blood Group", size: 17),
                        commonText(data: "Age", size: 17),
                        commonText(data: "Address", size: 17),
                        commonText(data: "Admit Date", size: 17),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        commonText(
                            data: ":- ${widget.patientData['name']}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData['mobileNumber']}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData['email']}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData['gender']}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData['bloodGroup']}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData['age']}", size: 17),
                        commonText(
                            data: ":- ${widget.patientData['address']}",
                            size: 17),
                        commonText(
                            data: ":- ${widget.patientData['adminDate']}",
                            size: 17),
                      ],
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
                Get.to(() => AddDieasePage(
                      patientKey: widget.patientData['pId'],
                    ));
              },
              child: const Text("Add Disease and Payment"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
