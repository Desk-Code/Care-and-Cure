import 'package:care_and_cure/Util/common_values.dart';
import 'package:flutter/material.dart';

class PatientController {
  static GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  static final TextEditingController txtSearchController =
      TextEditingController();

  static final TextEditingController _txtNameController =
      TextEditingController();
  static final TextEditingController _txtMobNumController =
      TextEditingController();
  static final TextEditingController _txtEmailController =
      TextEditingController();
  static final TextEditingController _txtAgeController =
      TextEditingController();
  static final TextEditingController _txtGenderController =
      TextEditingController();
  static final TextEditingController _txtBloodGroupController =
      TextEditingController();
  static final TextEditingController _txtAddController =
      TextEditingController();
  static final TextEditingController _txtDiseaseController =
      TextEditingController();
  static final TextEditingController _txtPayAmountController =
      TextEditingController();
  static final TextEditingController _txtRoomNoController =
      TextEditingController();
  static final TextEditingController _txtWardNoController =
      TextEditingController();
  static final TextEditingController _txtDocRefController =
      TextEditingController();

  static final List<String> bloodGroup = [
    "O Positive",
    "O Negative",
    "A Positive",
    "A Negative",
    "B Positive",
    "B Negative",
    "AB Positive",
    "AB Negative",
  ];

  static List<TextEditingController> get txtPtController => [
        _txtNameController,
        _txtMobNumController,
        _txtEmailController,
        _txtAgeController,
        _txtGenderController,
        _txtBloodGroupController,
        _txtAddController,
        _txtDiseaseController,
        _txtPayAmountController,
        _txtRoomNoController,
        _txtWardNoController,
        _txtDocRefController
      ];

  static get txtPtClearController => [
        _txtNameController.clear(),
        _txtMobNumController.clear(),
        _txtEmailController.clear(),
        _txtAgeController.clear(),
        _txtGenderController.clear(),
        _txtBloodGroupController.clear(),
        _txtAddController.clear(),
        _txtDiseaseController.clear(),
        _txtPayAmountController.clear(),
        _txtRoomNoController.clear(),
        _txtWardNoController.clear(),
        _txtDocRefController.clear(),
        CommonValues.pickPatientLink.value = "",
      ];
}
