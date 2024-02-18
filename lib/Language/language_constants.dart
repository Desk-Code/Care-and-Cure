import 'package:care_and_cure/Common/model/language_model.dart';

class LanguageConstants {
  static List<LanguageModel> languages = [
    LanguageModel(
      imageUrl: "🇺🇸",
      languageName: 'English',
      countryCode: 'US',
      languageCode: 'en',
    ),
    LanguageModel(
      imageUrl: "🇮🇳",
      languageName: 'हिंदी',
      countryCode: 'IN',
      languageCode: 'hi',
    ),
    LanguageModel(
      imageUrl: "🇮🇳",
      languageName: 'ગુજરાતી',
      countryCode: 'IN',
      languageCode: 'gu',
    ),
  ];
}
