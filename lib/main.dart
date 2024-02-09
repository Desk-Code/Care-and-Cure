import 'package:care_and_cure/Data/FirebaseData/firebase_option_auth.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Language/language_constants.dart';
import 'package:care_and_cure/Language/languages.dart';
import 'package:care_and_cure/Presentation/SplashScreen/Screen/splash_screen_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Firebase Intregation
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //localisation language
  await SharedPref.init;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: Locale(SharedPref.getLanguageCode, SharedPref.getCountryCode),
      translations: Languages(),
      fallbackLocale: Locale(LanguageConstants.languages[0].languageCode,
          LanguageConstants.languages[0].countryCode),
      home: const SplashScreenPage(),
    );
  }
}
