import 'package:care_and_cure/Common/Widgets/text_form_field.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddDieasePage extends StatefulWidget {
  final String patientKey;
  const AddDieasePage({super.key, required this.patientKey});

  @override
  State<AddDieasePage> createState() => _AddDieasePageState();
}

class _AddDieasePageState extends State<AddDieasePage> {
  final TextEditingController _txtDiseaseController = TextEditingController();
  final TextEditingController _txtPaymentController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ConstrainColor.bgColor,
      ),
      body: Form(
        key: globalKey,
        child: Column(
          children: [
            commonTextFormField(
              icon: Icons.medication_liquid_outlined,
              nameOfField: 'disease'.tr,
              textEditingController: _txtDiseaseController,
            ),
            commonTextFormField(
              icon: Icons.payment,
              nameOfField: 'payableAmount'.tr,
              textEditingController: _txtPaymentController,
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(
                    context.screenWidth * 0.9,
                    context.screenHeight * 0.06,
                  ),
                ),
              ),
              onPressed: () async {
                if (globalKey.currentState!.validate()) {
                  HapticFeedback.heavyImpact();
                  await PatientApi.updateBillAndDisease(
                          amount: _txtPaymentController.text,
                          disease: _txtDiseaseController.text,
                          pId: widget.patientKey)
                      .then((value) => Get.back());
                }
              },
              child: Text('update'.tr),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
