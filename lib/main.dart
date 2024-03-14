import 'package:flutter/material.dart';

import 'presentation/HomeScreen/view/HomeScreen.dart';

void main() {
  runApp(cloneApp());
}

class cloneApp extends StatelessWidget {
  const cloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
