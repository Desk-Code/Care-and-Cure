import 'package:care_and_cure/Language/language_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedKey {
  static String countryCode = "CountryCode";
  static String languageCode = "LanguageCode";
  static String selectedIndex = "SelectedIndex";
  static String hospitalUser = "HospitalUser";
  static String doctorUser = "DoctorUser";
  static String patientUser = "PatientUser";
  static String hospitalAddress = "HospitalAddress";
  static String hospitalEmail = "HospitalEmail";
  static String hospitalCertificate = "HospitalCertificate";
  static String hospitalImage = "HospitalImage";
  static String hospitalName = "HospitalName";
  static String hospitalMobilNumber = "HospitalMobilNumber";
  static String hospitalPassword = "HospitalPassword";
  static String hospitalUpiID = "HospitalUpiID";
  static String hospitalHID = "HospitalHID";
  static String doctorDId = "DoctorDId";
  static String patientId = "PatientId";
  static String twoFactor = "TwoFactor";
}

class SharedPref {
  static SharedPreferences? pref;

  //instance of shared preferences
  static Future<SharedPreferences> get init async =>
      pref = await SharedPreferences.getInstance();

  // for the set value
  static set setLanguageCode(String data) =>
      pref!.setString(SharedKey.languageCode, data);
  static set setCountryCode(String data) =>
      pref!.setString(SharedKey.countryCode, data);
  static set setSelectedIndex(int data) =>
      pref!.setInt(SharedKey.selectedIndex, data);
  static set setHospitalUser(String data) =>
      pref!.setString(SharedKey.hospitalUser, data);
  static set setDoctorUser(String data) =>
      pref!.setString(SharedKey.doctorUser, data);
  static set setPatientUser(String data) =>
      pref!.setString(SharedKey.patientUser, data);
  static set setHospitalAddress(String data) =>
      pref!.setString(SharedKey.hospitalAddress, data);
  static set setHospitalEmail(String data) =>
      pref!.setString(SharedKey.hospitalEmail, data);
  static set setHospitalCertificate(String data) =>
      pref!.setString(SharedKey.hospitalCertificate, data);
  static set setHospitalImage(String data) =>
      pref!.setString(SharedKey.hospitalImage, data);
  static set setHospitalName(String data) =>
      pref!.setString(SharedKey.hospitalName, data);
  static set setHospitalMobileNumber(String data) =>
      pref!.setString(SharedKey.hospitalMobilNumber, data);
  static set setHospitalPasssword(String data) =>
      pref!.setString(SharedKey.hospitalPassword, data);
  static set setHospitalUpiId(String data) =>
      pref!.setString(SharedKey.hospitalUpiID, data);
  static set setHospitalHId(String data) =>
      pref!.setString(SharedKey.hospitalHID, data);
  static set setDoctorDId(String data) =>
      pref!.setString(SharedKey.doctorDId, data);
  static set setPatientId(String data) =>
      pref!.setString(SharedKey.patientId, data);
  static set setTwoFactor(String data) =>
      pref!.setString(SharedKey.twoFactor, data);

  //for the get value
  static String get getLanguageCode =>
      pref!.getString(SharedKey.languageCode) ??
      LanguageConstants.languages[0].languageCode;
  static String get getCountryCode =>
      pref!.getString(SharedKey.countryCode) ??
      LanguageConstants.languages[0].countryCode;
  static int get getSelectedIndex => pref!.getInt(SharedKey.selectedIndex) ?? 0;
  static String get getHospitalUser =>
      pref!.getString(SharedKey.hospitalUser) ?? "";
  static String get getDoctorUser =>
      pref!.getString(SharedKey.doctorUser) ?? "";
  static String get getPatientUser =>
      pref!.getString(SharedKey.patientUser) ?? "";
  static String get getHospitalAddress =>
      pref!.getString(SharedKey.hospitalAddress) ?? "";
  static String get getHospitalEmail =>
      pref!.getString(SharedKey.hospitalEmail) ?? "";
  static String get getHospitalCertificate =>
      pref!.getString(SharedKey.hospitalCertificate) ?? "";
  static String get getHospitalImage =>
      pref!.getString(SharedKey.hospitalImage) ?? "";
  static String get getHospitalName =>
      pref!.getString(SharedKey.hospitalName) ?? "";
  static String get getHospitalMobileNumber =>
      pref!.getString(SharedKey.hospitalMobilNumber) ?? "";
  static String get getHospitalPassword =>
      pref!.getString(SharedKey.hospitalPassword) ?? "";
  static String get getHospitalUpiId =>
      pref!.getString(SharedKey.hospitalUpiID) ?? "";
  static String get getHospitalHId =>
      pref!.getString(SharedKey.hospitalHID) ?? "";
  static String get getDoctorDId => pref!.getString(SharedKey.doctorDId) ?? "";
  static String get getPatientId => pref!.getString(SharedKey.patientId) ?? "";
  static String get getTwoFactor =>
      pref!.getString(SharedKey.twoFactor) ?? "False";
}
