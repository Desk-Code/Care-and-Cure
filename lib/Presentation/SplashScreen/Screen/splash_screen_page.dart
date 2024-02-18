import 'dart:developer';

import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Presentation/SplashScreen/Controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with TickerProviderStateMixin {
  //
  // Gif Controller
  //
  late final GifController _introDoctorGifController =
      GifController(vsync: this);
  late final GifController _heartBeatGifController = GifController(vsync: this);

  @override
  void initState() {
    SpalshScreenController.navigateToBoarding();
    log(SharedPref.getHospitalUser);
    super.initState();
  }

  @override
  void dispose() {
    _introDoctorGifController.dispose();
    _heartBeatGifController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: context.screenHeight * 0.05,
          ),
          Gif(
            controller: _introDoctorGifController,
            autostart: Autostart.loop,
            image: const AssetImage(
              "assets/animation/intro_doctor.gif",
            ),
          ),
          SizedBox(
            height: context.screenHeight * 0.39,
            width: context.screenWidth,
            child: Gif(
              controller: _heartBeatGifController,
              autostart: Autostart.loop,
              image: const AssetImage(
                "assets/animation/heartbeat.gif",
              ),
            ),
          ),
        ],
      )),
    );
  }
}
