import 'package:clone_app/presentation/HomeScreen/view/HomeScreen.dart';
import 'package:clone_app/presentation/about_you_screen/view/about_you_screen.dart';
import 'package:clone_app/presentation/chose_username/view/username_screen.dart';
import 'package:clone_app/presentation/interests_screen/view/interests_screen.dart';
import 'package:flutter/material.dart';

//import 'presentation/interests_screen/view/interests_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterestsScreen(),
    );
  }
}
