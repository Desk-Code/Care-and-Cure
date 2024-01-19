import 'package:care_and_cure/Presentation/BoardingScreen/screens/boarding_first_page.dart';
import 'package:care_and_cure/Presentation/BoardingScreen/screens/boarding_fourth_page.dart';
import 'package:care_and_cure/Presentation/BoardingScreen/screens/boarding_second_page.dart';
import 'package:care_and_cure/Presentation/BoardingScreen/screens/boarding_third_page.dart';
import 'package:flutter/material.dart';

class BoardingController {
  static bool onLastPage = false;

  static List<Widget> screens = [
    const BoardingFirstPage(),
    const BoardingSecondPage(),
    const BoardingThirdPage(),
    const BoardingFourthPage(),
  ];

  static final PageController _pageController = PageController();
  static PageController get pageController => _pageController;
}
