import 'package:care_and_cure/Util/constrain_data.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingFirstPage extends StatefulWidget {
  const BoardingFirstPage({super.key});

  @override
  State<BoardingFirstPage> createState() => _BoardingFirstPageState();
}

class _BoardingFirstPageState extends State<BoardingFirstPage>
    with TickerProviderStateMixin {
  late final GifController _gifInfoDoctorController =
      GifController(vsync: this);
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _gifInfoDoctorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gif(
          controller: _gifInfoDoctorController,
          image: const AssetImage("assets/animation/intro_doctor.gif"),
          autostart: Autostart.loop,
        ),
        Text(
          ConstrainData.rule1_1,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          ConstrainData.rule1_2,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
