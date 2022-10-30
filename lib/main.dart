import 'package:flutter/material.dart';
import 'package:savvy/MobileScreens/preLoginPage.dart';
import 'package:savvy/MobileScreens/loginPage.dart';
import 'package:savvy/MobileScreens/registrationPage.dart';
import 'package:savvy/MobileScreens/getOtpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Savvy',
      initialRoute: 'd',
      routes: {
        'a': (context) => PreLoginPage(),
        'b': (context) => LoginPage(),
        'c': (context) => RegistrationPage(),
        'd': (context) => GetOtpPage(),
      },
    );
  }
}
