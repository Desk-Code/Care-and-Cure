// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'dart:io';

import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonFilePicker extends StatefulWidget {
  const CommonFilePicker({
    super.key,
  });

  @override
  State<CommonFilePicker> createState() => _CommonFilePickerState();
}

class _CommonFilePickerState extends State<CommonFilePicker> {
  var argData = Get.arguments;
  double progress = 0;
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  String uniqueName = DateTime.now().microsecondsSinceEpoch.toString();
  String pickFileLink = "";
  Future uploadFile() async {
    final path = "files/$uniqueName.${pickedFile!.extension}";
    final file = File(pickedFile!.path!);
    final ref = FirebaseStorage.instance.ref().child(path);
    setState(() {
      uploadTask = ref.putFile(file);
    });
    final snapshot = await uploadTask!.whenComplete(() {});
    pickFileLink = await snapshot.ref.getDownloadURL();
    log("Downlod Link : $pickFileLink");
    setState(() {
      uploadTask = null;
    });
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (pickedFile != null)
                    SizedBox(
                        height: 400,
                        child: Image.file(
                          File(pickedFile!.path!),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: context.screenWidth * 1.7 / 2,
                    child: ElevatedButton(
                      onPressed: selectFile,
                      child: Text('select file'.tr),
                    ),
                  ),
                  const SizedBox(height: 7),
                  SizedBox(
                    width: context.screenWidth * 1.7 / 2,
                    child: ElevatedButton(
                      onPressed: uploadFile,
                      child: Text('upload file'.tr),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: buildProgress(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProgress() => StreamBuilder<TaskSnapshot>(
        stream: uploadTask?.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            progress = (data.bytesTransferred / data.totalBytes) * 100;
            return Container(
              margin: const EdgeInsets.all(5),
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: (progress == 100)
                        ? () {
                            if (argData == 1) {
                              CommonValues.pickHospitalImageLink.value =
                                  pickFileLink;
                            } else if (argData == 2) {
                              CommonValues.pickHospitalCertiLink.value =
                                  pickFileLink;
                            } else if (argData == 3) {
                              CommonValues.pickStaffLink.value = pickFileLink;
                            } else if (argData == 4) {
                              CommonValues.pickDoctorLink.value = pickFileLink;
                            }
                            Get.back();
                          }
                        : null,
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(17),
                      value: progress / 100,
                      backgroundColor: Colors.grey,
                      color: Colors.green,
                    ),
                  ),
                  Center(
                    child: Text(
                      (progress == 100)
                          ? 'done'.tr
                          : "${(progress).roundToDouble()}%",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
}
