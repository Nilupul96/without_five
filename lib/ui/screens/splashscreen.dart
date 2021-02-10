import 'dart:async';

import 'package:Without_five/styles.dart';
import 'package:Without_five/utils/settings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToScreen();
  }

  navigateToScreen() async {
    var username = await SharedSettings.getUsername();
    print("username:$username");
    Timer(Duration(seconds: 2), () {
      if (username == null) {
        Navigator.pushReplacementNamed(context, "/editProfile");
      } else {
        Navigator.pushReplacementNamed(context, "/profile");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/prof.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
