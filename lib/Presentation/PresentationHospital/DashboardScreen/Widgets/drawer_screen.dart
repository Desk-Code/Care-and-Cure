import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/BillData/Controller/bill_data.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Widgets/common_drawer_tile.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DoctorData/Screen/doctor_search_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/PatientData/Screen/patient_search_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/ProfileScreen/hospital_profile_screen.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/StaffData/Screen/staff_dash_screen.dart';
import 'package:care_and_cure/Presentation/login_dash/screen/login_dash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget dashDrawer(BuildContext context) => Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/hospitalhomedrawerlogo.png",
                    ),
                  ),
                ),
              ),
              const Divider(),
              commonDrawerTile(
                icon: Icons.home,
                name: 'home'.tr,
                onTap: () {
                  Get.back();
                },
              ),
              commonDrawerTile(
                icon: Icons.person,
                name: 'patientDetails'.tr,
                onTap: () {
                  Get.to(() => const PatientSearchScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.groups,
                name: 'staffDetail'.tr,
                onTap: () {
                  Get.to(() => const StaffDashScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.person,
                name: 'doctorDetail'.tr,
                onTap: () {
                  Get.to(() => const DoctorSearchScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.currency_rupee_sharp,
                name: 'bill'.tr,
                onTap: () {
                  Get.to(() => const BillData());
                },
              ),
              const Divider(),
              commonDrawerText(text: "Profile"),
              commonDrawerTile(
                icon: Icons.person,
                name: 'profile'.tr,
                onTap: () {
                  Get.to(() => const HospitalProfileScreen());
                },
              ),
              commonDrawerTile(
                icon: Icons.logout_rounded,
                name: 'logout'.tr,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text('Please Confirm'),
                      content: const Text("Do you want to logout ?"),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('no'.tr),
                        ),
                        MaterialButton(
                          onPressed: () async {
                            await HospitalFirebaseApi.signOutMethod().then(
                                (value) =>
                                    Get.offAll(() => const LoginDashScreen()));
                          },
                          child: Text('yes'.tr),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const Divider(),
              commonDrawerText(text: "Other"),
              commonDrawerTile(
                icon: Icons.delete,
                name: "Delete Account",
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text(
                        '!Alert',
                        style: TextStyle(color: Colors.red),
                      ),
                      content: const Text(
                          "Do you want to delete account and lose all the data permently are you sure ?"),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("No"),
                        ),
                        MaterialButton(
                          onPressed: () async {
                            //
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
