import 'dart:developer';
import 'dart:io';

import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/HospitalSignUpScreen/controller/hospital_signup_controller.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:info_popup/info_popup.dart';

class HospitalSignUpScreen extends StatefulWidget {
  const HospitalSignUpScreen({super.key});

  @override
  State<HospitalSignUpScreen> createState() => _HospitalSignUpScreenState();
}

class _HospitalSignUpScreenState extends State<HospitalSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final instance = Get.put(HospitalSignupController());
    return Scaffold(
      backgroundColor: ConstrainColor.bgColor,
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(
            top: context.screenHeight * 0.01,
            left: context.screenWidth * 0.05,
            right: context.screenWidth * 0.05,
          ),
          child: Form(
            key: instance.key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'signupTitle'.tr,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Container(
                  height: context.screenHeight * 0.35,
                  width: context.screenWidth * 0.90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/hospitalregister.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: instance.txtHospitalName,
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'hospitalName'.tr,
                    prefixIcon: const Icon(Iconsax.user4),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: instance.txtPhoneNumber,
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'hospitalMNumber'.tr,
                    prefixIcon: const Icon(Iconsax.call),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: instance.txtEmail,
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
                TextFormField(
                  controller: instance.txtAddress,
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'hospitalAddress'.tr,
                    prefixIcon: const Icon(Iconsax.home),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: instance.txtUpiId,
                  validator: ValidationBuilder().required().build(),
                  expands: false,
                  decoration: InputDecoration(
                    labelText: 'hospitalUpiId'.tr,
                    prefixIcon: const Icon(Iconsax.card),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => TextFormField(
                    validator: (value) {
                      if (value == null) {
                        return 'Passowrd is required';
                      }

                      if (value.length <= 6) {
                        return 'Minimum 6 character password is required';
                      }
                      return null;
                    },
                    controller: instance.txtPassword,
                    obscureText: instance.isObsecure.value,
                    decoration: InputDecoration(
                      labelText: 'password'.tr,
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                        icon: Icon(instance.isObsecure.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye),
                        onPressed: () => instance.isObsecure.value =
                            !instance.isObsecure.value,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('addImage'.tr),
                    const Spacer(),
                    InfoPopupWidget(
                      contentTitle: 'addImageInfo'.tr,
                      arrowTheme: const InfoPopupArrowTheme(
                        color: Colors.grey,
                      ),
                      child: const Icon(
                        Icons.info,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: context.screenWidth * 0.85 / 2,
                      child: ElevatedButton(
                        onPressed: (instance.isHImage.value)
                            ? null
                            : () async {
                                // add the package image_picker
                                final file = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                if (file == null) return;
                                String fileName = DateTime.now()
                                    .microsecondsSinceEpoch
                                    .toString();

                                // Get the reference to storage root
                                // We create the image folder first and insider folder we upload the image
                                Reference referenceRoot =
                                    FirebaseStorage.instance.ref();
                                Reference referenceDireImages =
                                    referenceRoot.child('hospitalImages');

                                // we have creata reference for the image to be stored
                                Reference referenceImageaToUpload =
                                    referenceDireImages.child(fileName);

                                // For errors handled and/or success
                                try {
                                  await referenceImageaToUpload
                                      .putFile(File(file.path))
                                      .then((p0) {
                                    instance.isHImage.value = true;
                                  });

                                  // We have successfully upload the image now
                                  // make this upload image link in firebase database

                                  instance.hospitalImage =
                                      await referenceImageaToUpload
                                          .getDownloadURL();
                                  log("Image Url = ${instance.hospitalImage}");
                                } catch (error) {
                                  //some error
                                }
                              },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Iconsax.add_square5,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              'hospital'.tr,
                              style: const TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: context.screenWidth * 0.85 / 2,
                      child: ElevatedButton(
                        onPressed: () async {
                          // add the package image_picker
                          final file = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          if (file == null) return;
                          String fileName =
                              DateTime.now().microsecondsSinceEpoch.toString();

                          // Get the reference to storage root
                          // We create the image folder first and insider folder we upload the image
                          Reference referenceRoot =
                              FirebaseStorage.instance.ref();
                          Reference referenceDireImages =
                              referenceRoot.child('hospitalImages');

                          // we have creata reference for the image to be stored
                          Reference referenceImageaToUpload =
                              referenceDireImages.child(fileName);

                          // For errors handled and/or success
                          try {
                            await referenceImageaToUpload
                                .putFile(File(file.path))
                                .then((p0) {
                              instance.isHCertificate.value = true;
                            });

                            // We have successfully upload the image now
                            // make this upload image link in firebase database

                            instance.hospitalCertificate =
                                await referenceImageaToUpload.getDownloadURL();
                            log("Image Certificate Url = ${instance.hospitalCertificate}");
                          } catch (error) {
                            //some error
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Iconsax.add_square5,
                              color: Colors.black45,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              'certificate'.tr,
                              style: const TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: context.screenWidth,
                  child: ElevatedButton(
                      onPressed: () {
                        if (instance.key.currentState!.validate()) {
                          if (instance.hospitalImage.isEmpty ||
                              instance.hospitalCertificate.isEmpty) {
                            FlutterToast()
                                .showMessage("Please Upload Image First...");
                            return;
                          } else {
                            instance.hospitalSignup();
                          }
                        }
                      },
                      child: Text('signupButton'.tr)),
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
