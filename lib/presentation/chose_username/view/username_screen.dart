import 'package:clone_app/presentation/avatar_screen/view/avatar_screen.dart';
import 'package:flutter/material.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your profile",
              style: TextStyle(
                  color: Colors.grey[250],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Choose a username",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            RichText(
              text: TextSpan(
                  text:
                      "Reddit is anonymous, so your username is what you'll\n go by here.",
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
                  ]),
            ),
            SizedBox(height: 60),
            Text(
              "u/NoPraline3938",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(height: 15),
            Text(
              "This will be your name forever, so make sure it feels like you",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 25),
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
            SizedBox(height: 15),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Agitated-Spend1418",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Typical_Raspberry459",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Major-Speed-4438",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 150),
            Center(
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
