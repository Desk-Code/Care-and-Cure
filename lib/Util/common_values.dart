import 'package:otp_text_field/otp_field.dart';

class CommonValues {
  static String phNumberValue = "";
  static String otpPinValue = "";
  static String inputedNumber = "";

  static final OtpFieldController _otpFeildController = OtpFieldController();
  static OtpFieldController get otpController => _otpFeildController;
}
