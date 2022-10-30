import 'dart:async';

import 'package:dokana/app_config/app_image.dart';
import 'package:flutter/material.dart';

import '../tab_screen.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  bool selected = false;
  bool userStatus = false;
  String userId = '';

  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TabScreen(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            color: Colors.white,
            width: size.width,
            height: 170.0,
            // child: AnimatedAlign(
            //   alignment: selected ? Alignment.centerRight : Alignment.centerLeft,
            //   duration: const Duration(seconds: 3),
            //   curve: Curves.fastOutSlowIn,
            child: Image.asset(
              AppImage.logo,
              height: 100,
              width: 100,
            ),
            // ),
          ),
        ),
      ),
    );
  }
}

/*
import 'package:dolabi_yasser/screens/login_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../mylog.dart';
import '../sharedpref/user_share_pref.dart';

import 'tabs_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  bool userStatus = false;
  late UserModel userModel;
  @override
  void initState() {
    super.initState();

    getUserStatus();
    _getUSerFromSharedPref();
  }

  getUserStatus() async {
    SharedPrefUser prefs = SharedPrefUser();
    bool currentStatus = await prefs.isLogin();
    myLog("currentStatus", currentStatus);
    if (currentStatus) {
      String? token = await prefs.getToken();
      //CompanyRequest().getWhatsappPhone(token: token);
    }

    setState(() {
      userStatus = currentStatus;
    });
  }

  _getUSerFromSharedPref() async {
    var temp = await SharedPrefUser().getUser();
    setState(() {
      userModel = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    var userName = userModel.user.name;
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.10),
        child: EasySplashScreen(
          durationInSeconds: 3,
          navigator:
              userStatus ? TabsScreen(name: userName) : const LoginScreen(),
          // title: const Text(
          //   'دولابي',
          //   style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          // ),
          logo: Image.asset(
            'images/main_logo.png',
            color: Theme.of(context).colorScheme.primary,
          ),
          logoSize: 150,
          loaderColor: Colors.white,
          backgroundColor: Colors.white,
          // loaderColor: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

*/
