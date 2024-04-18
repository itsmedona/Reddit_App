import 'package:clone_app/presentation/FirstScreen/view/first_screen.dart';
import 'package:clone_app/presentation/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_config/app_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences sharedPreferences;
  late bool checkLogged;

  Future<void> checkUserLogin() async {
    sharedPreferences = await SharedPreferences.getInstance();
    checkLogged = sharedPreferences.getBool(AppConfig.status) ?? false;
  }

  @override
  void initState() {
    checkUserLogin().then((value) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => checkLogged ? BottomNavScreen() : FirstScreen()),
        );
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/redditlogo.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
