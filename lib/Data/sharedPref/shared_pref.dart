import 'package:care_and_cure/Language/language_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedKey {
  static String countryCode = "CountryCode";
  static String languageCode = "LanguageCode";
  static String selectedIndex = "SelectedIndex";
  static String hospitalUser = "HospitalUser";
  static String hospitalAddress = "HospitalAddress";
  static String hospitalEmail = "HospitalEmail";
  static String hospitalCertificate = "HospitalCertificate";
  static String hospitalImage = "HospitalImage";
  static String hospitalName = "HospitalName";
  static String hospitalMobilNumber = "HospitalMobilNumber";
  static String hospitalPassword = "HospitalPassword";
  static String hospitalUpiID = "HospitalUpiID";
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
}
