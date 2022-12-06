import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:savvy/MobileScreens/confirmPage.dart';
import 'package:savvy/MobileScreens/otpVerificationPage.dart';
import 'package:savvy/MobileScreens/preLoginPage.dart';
import 'package:savvy/MobileScreens/loginPage.dart';
import 'package:savvy/MobileScreens/registrationPage.dart';
import 'package:savvy/MobileScreens/getOtpPage.dart';
import 'package:savvy/MobileScreens/passwordPage.dart';
import 'package:savvy/MobileScreens/homePage.dart';
import 'package:savvy/MobileScreens/paymentPage.dart';
import 'MobileScreens/routePage.dart';
import 'MobileScreens/selectEV.dart';
import 'MobileScreens/trackPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PreLoginPage>(
          create: (_) => LoginPage(FirebaseAuth.instance),
        )

        StreamProvider(
          create: (context) => context.read<PreLoginPage>().authStateChanges,
        )
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Savvy',
      initialRoute: 'g',
      routes: {
        'a': (context) => PreLoginPage(),
        'b': (context) => LoginPage(),
        'c': (context) => RegistrationPage(),
        'd': (context) => GetOtpPage(),
        'e': (context) => OTPVerificationPage(),
        'f': (context) => PasswordPage(),
        'g': (context) => HomePage(),
        'j': (context) => ConfirmPage(),
        'k': (context) => SelectEVPage(),
        'l': (context) => TrackPage(),
        'm': (context) => RoutePage(),
        'za': (context) => PaymentPage(),
      },
      home: AuthenticationWrapper(),
    ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return LoginPage();
  }
}