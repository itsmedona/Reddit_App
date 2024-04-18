import 'package:clone_app/presentation/FirstScreen/view/first_screen.dart';
import 'package:clone_app/presentation/login/controller/login_controller.dart';
//import 'package:clone_app/presentation/about_you_screen/view/about_you_screen.dart';
//import 'package:clone_app/presentation/chose_username/view/username_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/registration/controller/registration_controller.dart';

//import 'presentation/interests_screen/view/interests_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FirstScreen(),
//     );
//   }
// }


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => RegistrationController()),
      ChangeNotifierProvider(create: (context) => LoginController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:FirstScreen(),
      ),
    );
  }
}