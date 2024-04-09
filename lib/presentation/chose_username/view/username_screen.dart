import 'package:flutter/material.dart';
import 'package:clone_app/presentation/avatar_screen/view/avatar_screen.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen();

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AvatarScreen()),
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back, size: 35),
        title: Row(
          children: [
            SizedBox(width: 110),
            Image.asset(
              'assets/images/redditlogo.jpg',
              height: 40,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your profile",
              style: TextStyle(
                color: Colors.grey[250],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Choose a username",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text:
                    "Reddit is anonymous, so your username is what you'll\n go by here. ",
                style: TextStyle(
                  color: Colors.grey[250],
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text:
                        "Choose wisely-because once you get a\n name, you can't change it.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "u/NoPraline3938",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            SizedBox(height: 10),
            Text(
              "This will be your name forever, so make sure it feels like you",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Can't think of one? Use one of these:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.refresh)
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  buildUsernameContainer("Agitated-Spend1418"),
                  buildUsernameContainer("Typical_Raspberry459"),
                  buildUsernameContainer("Major-Speed-4438"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AvatarScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUsernameContainer(String username) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[300],
      ),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            username,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
