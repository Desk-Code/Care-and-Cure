import 'dart:developer';

import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Data/FirebaseData/patient_firebase_api.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:care_and_cure/Util/constrain_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';

class PatientPaymentScreen extends StatefulWidget {
  const PatientPaymentScreen({super.key});

  @override
  State<PatientPaymentScreen> createState() => _PatientPaymentScreenState();
}

class _PatientPaymentScreenState extends State<PatientPaymentScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  int amount = CommonValues.payableAmount;
  final Razorpay _razorPay = Razorpay();

  @override
  void initState() {
    _textEditingController.text = CommonValues.payableAmount.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _globalKey,
        child: Column(
          children: [
            Container(
              height: context.screenHeight * 0.35,
              width: context.screenWidth * 0.8,
              margin: EdgeInsets.only(
                right: context.screenWidth * 0.1,
                left: context.screenWidth * 0.1,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/intro_doctor.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            commonText(
              data: 'payInfo1'.tr,
              size: 19,
            ),
            commonText(
              data: 'payInfo2'.tr,
              size: 16,
            ),
            Card(
              margin: const EdgeInsets.only(top: 10),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                  right: 5,
                ),
                height: context.screenHeight * 0.20,
                width: context.screenWidth * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: ConstrainColor.bgColor,
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _textEditingController,
                        onChanged: (value) {
                          if (value != "") {
                            amount = int.parse(_textEditingController.text);
                            log(amount.toString());
                          }
                        },
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: "Enter Amout to you have Pay"),
                        ]).call,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.currency_rupee),
                          hintText: 'enterAmount'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SlideAction(
                        borderRadius: 12,
                        elevation: 0,
                        innerColor: Colors.blue.shade400,
                        outerColor: Colors.blue.shade100,
                        sliderButtonIcon: const Icon(
                          Icons.attach_money_sharp,
                          color: Colors.black,
                        ),
                        text: 'slidePay'.tr,
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        onSubmit: () {
                          if (_globalKey.currentState!.validate()) {
                            if (CommonValues.payableAmount >=
                                    double.parse(_textEditingController.text) &&
                                double.parse(_textEditingController.text) !=
                                    0) {
                              HapticFeedback.heavyImpact();
                              var options = {
                                'key': 'rzp_test_yNCgfS03jZXBVM',
                                'amount': (amount * 100),
                                'name': 'Care And Cure',
                                'description': 'Fees',
                                'retry': {'enabled': true, 'max_count': 1},
                                'send_sms_hash': true,
                                'prefill': {
                                  'contact': '9313403837',
                                  'email': 'test@razorpay.com',
                                },
                              };
                              _razorPay.open(options);
                              _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
                                  paymentSuccess);
                              _razorPay.on(
                                  Razorpay.EVENT_PAYMENT_ERROR, paymentFailure);
                            } else {
                              FlutterToast().showMessage('payError'.tr);
                            }
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void paymentSuccess(PaymentSuccessResponse paymentSuccessResponse) async {
    CommonValues.payableAmount -= int.parse(_textEditingController.text);
    await PatientApi.updatePayAmount(
      key: SharedPref.getPatientId,
      payAmount: CommonValues.payableAmount.toString(),
    );
    _textEditingController.clear();
    FlutterToast().showMessage("${paymentSuccessResponse.paymentId}");
  }

  void paymentFailure(PaymentFailureResponse paymentFailureResponse) {
    FlutterToast().showMessage("${paymentFailureResponse.message}");
  }
}
