import 'package:dokana/screen/all_settings/about_screen.dart';
import 'package:dokana/screen/all_settings/splash_screen.dart';
import 'package:dokana/screen/cart_screen.dart';
import 'package:dokana/screen/home_screen.dart';
import 'package:dokana/screen/login_screen.dart';
import 'package:dokana/screen/sign_up_screen.dart';
import 'package:dokana/screen/tab_screen.dart';
import 'package:flutter/material.dart';

import 'app_config/app_config.dart';
import 'screen/forgot_password_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const SplahScreen(),
      routes: {
        AppConfig.login: (ctx) => const LoginScreen(),
        AppConfig.home: (ctx) => const HomeScreen(),
        AppConfig.signUp: (ctx) => const SignUpScreen(),
        AppConfig.forgetPassword: (ctx) => const ForgotPasswordScreen(),
        AppConfig.tabScreen: (ctx) => const TabScreen(),
        AppConfig.cartScreen: (ctx) => const CartScreen(),
        AppConfig.aboutUs: (ctx) => const AboutScreen(),
        AppConfig.splahScreen: (ctx) => const SplahScreen(),
      },
    );
  }
}
