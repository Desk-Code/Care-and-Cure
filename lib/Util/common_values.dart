import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class CommonValues extends GetxController {
  static CommonValues get cinstance => Get.find();

  static String phNumberValue = "";
  static String otpPinValue = "";
  static String inputedNumber = "";

  static String search = "";
  static String filterData = "fullName";
  static List<Map<String, dynamic>> searchData = [];

  static int payableAmount = 0;

  static final OtpFieldController _otpFeildController = OtpFieldController();
  static OtpFieldController get otpController => _otpFeildController;

  // pick file value
  static RxString pickHospitalImageLink = "".obs;
  static RxString pickHospitalCertiLink = "".obs;
  static RxString pickStaffLink = "".obs;
  static RxString pickDoctorLink = "".obs;
  static RxString pickPatientLink = "".obs;
}
