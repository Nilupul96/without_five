import 'package:Without_five/ui/screens/editProfileScreen.dart';
import 'package:Without_five/ui/screens/levelListScreen.dart';
import 'package:Without_five/ui/screens/profileScreen.dart';
import 'package:Without_five/ui/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Without five',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/profile": (context) => ProfileScreen(),
        "/editProfile": (context) => EditProfileScreen(),
      },
      home: LevelListScreen(),
    );
  }
}
