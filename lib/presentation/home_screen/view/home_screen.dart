import 'package:clone_app/repository/drawer_widget.dart';
import 'package:clone_app/repository/home_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 100,
            ),
            Spacer(),
            Icon(
              Icons.search,
              size: 35,
            ),
            CircleAvatar(
              radius: 25,
              child: Image.asset("assets/images/reddit3.jpg"),
            ),
          ],
        ),
      ),
      drawer: drawer(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Post(index);
        },
      ),
    );
  }
}
