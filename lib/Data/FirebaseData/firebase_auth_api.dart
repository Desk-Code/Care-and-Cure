import 'package:care_and_cure/Common/Widgets/common_toast.dart';
import 'package:care_and_cure/Common/common_values.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseApiAuth {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static String firebaseVerificationId = '';

  static Future<void> sendOtp(
    BuildContext context, {
    required String phNumber,
    required Widget Function(BuildContext) toNavigate,
  }) async {
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: toNavigate,
          ),
        );
        firebaseVerificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

  static void otpVerification(
    BuildContext context, {
    required Widget Function(BuildContext) toNaviagte,
  }) {
    AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: firebaseVerificationId,
      smsCode: CommonValues.otpPinValue,
    );
    _auth.signInWithCredential(credential).then(
          (value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: toNaviagte),
            (route) => false,
          ),
        );
  }
}
