//import 'package:clone_app/global_widgets/BottomNavScreen/view/BottomNavScreen.dart';
import 'package:clone_app/presentation/AvatarScreen/view/AvatarScreen.dart';
import 'package:flutter/material.dart';
//import 'presentation/HomeScreen/view/HomeScreen.dart';

void main() {
  runApp(cloneApp());
}

class cloneApp extends StatelessWidget {
  const cloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
home:AvatarScreen(),
      //home: BottomNavScreen(),
      //home: HomeScreen(),
    );
  }
}
