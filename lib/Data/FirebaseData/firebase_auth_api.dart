import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Util/common_values.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FirebaseApiAuth {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static String firebaseVerificationId = '';

  static Future<void> sendOtp({
    required String phNumber,
    required Widget Function() toNavigate,
  }) async {
    Get.dialog(
      Dialog(
        child: Center(
          child: LoadingAnimationWidget.flickr(
            leftDotColor: Colors.red.shade200,
            rightDotColor: Colors.blue.shade200,
            size: 50,
          ),
        ),
      ),
    );
    await _auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 30),
      phoneNumber: phNumber,
      verificationCompleted: (phoneAuthCredential) {
        FlutterToast().showMessage('Verification completed');
      },
      verificationFailed: (error) {
        FlutterToast().showMessage(error.toString());
      },
      codeSent: (verificationId, forceResendingToken) {
        Get.to(
          toNavigate,
        );
        firebaseVerificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
    Get.back();
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
