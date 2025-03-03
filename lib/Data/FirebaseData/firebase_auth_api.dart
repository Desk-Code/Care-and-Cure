import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseApiAuth {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static String firebaseVerificationId = '';

  static Future<void> sendOtp({
    required String phNumber,
    required Widget Function() toNavigate,
  }) async {
    await _auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 30),
      phoneNumber: phNumber,
      verificationCompleted: (phoneAuthCredential) {
        FlutterToast().showMessage('verfiComp'.tr);
      },
      verificationFailed: (error) {
        FlutterToast().showMessage(error.toString());
      },
      codeSent: (verificationId, forceResendingToken) {
        firebaseVerificationId = verificationId;
        Get.to(
          toNavigate,
        );
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

  static void otpVerification({
    required Widget Function() toNaviagte,
  }) {
    AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: firebaseVerificationId,
      smsCode: CommonValues.otpPinValue,
    );
    _auth.signInWithCredential(credential).then(
          (value) => Get.offAll(toNaviagte),
        );
  }
}
