import 'package:care_and_cure/Common/model/patient_model.dart';
import 'package:flutter/material.dart';

class PatientProfileScreen extends StatefulWidget {
  final Patient patientData;
  const PatientProfileScreen({super.key, required this.patientData});

  @override
  State<PatientProfileScreen> createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
