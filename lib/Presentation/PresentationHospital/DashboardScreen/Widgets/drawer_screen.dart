import 'package:care_and_cure/Data/FirebaseData/hospital_firebase_api.dart';
import 'package:care_and_cure/Presentation/PresentationHospital/DashboardScreen/Widgets/common_drawer_tile.dart';
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
                name: "Home",
                onTap: () {
                  Get.back();
                },
              ),
              commonDrawerTile(
                icon: Icons.person,
                name: "Patient Details",
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const PatientSearchPage(),
                  //   ),
                  // );
                },
              ),
              commonDrawerTile(
                icon: Icons.groups,
                name: "Staff Detail",
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const StaffDashScreen(),
                  //     ));
                },
              ),
              commonDrawerTile(
                icon: Icons.person,
                name: "Doctor Detail",
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const DoctorSearchPage(),
                  //   ),
                  // );
                },
              ),
              commonDrawerTile(
                icon: Icons.currency_rupee_sharp,
                name: "Bill",
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const BillSearchData(),
                  //   ),
                  // );
                },
              ),
              const Divider(),
              commonDrawerText(text: "Profile"),
              commonDrawerTile(
                icon: Icons.person,
                name: "Profile",
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const HospProfilePage(),
                  //     ));
                },
              ),
              commonDrawerTile(
                icon: Icons.logout_rounded,
                name: "Log Out",
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
                          child: const Text("No"),
                        ),
                        MaterialButton(
                          onPressed: () async {
                            await HospitalFirebaseApi.signOutMethod().then(
                                (value) =>
                                    Get.offAll(() => const LoginDashScreen()));
                            // await FirebaseAuth.instance
                            //     .signOut()
                            //     .then((value) => Navigator.pushAndRemoveUntil(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) =>
                            //               const LoginDashScreen(),
                            //         ),
                            //         (route) => false));
                          },
                          child: const Text("Yes"),
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
                            // await FirebaseApi.deleteAccount(
                            //         key: FirebaseApi.loginUser['key'])
                            //     .then((value) => Navigator.pushAndRemoveUntil(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) =>
                            //               const LoginDashScreen(),
                            //         ),
                            //         (route) => false));
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
