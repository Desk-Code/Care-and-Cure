import 'package:care_and_cure/Language/language_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedKey {
  static String countryCode = "CountryCode";
  static String languageCode = "LanguageCode";
  static String selectedIndex = "SelectedIndex";
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

  //for the get value
  static String get getLanguageCode =>
      pref!.getString(SharedKey.languageCode) ??
      LanguageConstants.languages[0].languageCode;
  static String get getCountryCode =>
      pref!.getString(SharedKey.countryCode) ??
      LanguageConstants.languages[0].countryCode;
  static int get getSelectedIndex => pref!.getInt(SharedKey.selectedIndex) ?? 0;
}
