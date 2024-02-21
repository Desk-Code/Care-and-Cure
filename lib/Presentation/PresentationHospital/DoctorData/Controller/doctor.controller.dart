import 'package:care_and_cure/Util/common_values.dart';
import 'package:flutter/material.dart';

class DoctorController {
  static GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  static final TextEditingController txtSearchController =
      TextEditingController();

  static final TextEditingController _txtFullNameController =
      TextEditingController();
  static final TextEditingController _txtMobNumController =
      TextEditingController();
  static final TextEditingController _txtEmailController =
      TextEditingController();
  static final TextEditingController _txtGenderController =
      TextEditingController();
  static final TextEditingController _txtAgeController =
      TextEditingController();
  static final TextEditingController _txtAadharNumController =
      TextEditingController();
  static final TextEditingController _txtAddController =
      TextEditingController();
  static final TextEditingController _txtQualificationController =
      TextEditingController();
  static final TextEditingController _txtSpecialistController =
      TextEditingController();

  static final List<String> qualificationList = [
    "MBBS",
    "MS",
    "MD",
    "BSC NURSING",
    "B.PHRAMA",
    "BVSC",
    "BSMS"
  ];

  static List<TextEditingController> get txtDrController => [
        _txtFullNameController,
        _txtMobNumController,
        _txtEmailController,
        _txtGenderController,
        _txtAgeController,
        _txtAadharNumController,
        _txtAddController,
        _txtSpecialistController,
        _txtQualificationController,
      ];

  static get txtDrClearController => [
        _txtFullNameController.clear(),
        _txtMobNumController.clear(),
        _txtEmailController.clear(),
        _txtGenderController.clear(),
        _txtAgeController.clear(),
        _txtAadharNumController.clear(),
        _txtAddController.clear(),
        _txtSpecialistController.clear(),
        _txtQualificationController.clear(),
        CommonValues.pickDoctorLink.value = "",
      ];
}
