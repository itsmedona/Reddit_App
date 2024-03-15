import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200),
          Container(
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/redditlogo.jpg"))),
          ),
          SizedBox(height: 50),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: "All your interests\n   in one place",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.phone_android,
                    size: 20,
                  ),
                  SizedBox(width: 25),
                  Text(
                    "Continue with phone number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.g_mobiledata,
                    size: 35,
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Icon(
                    Icons.email_outlined,
                    size: 20,
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Continue with Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: RichText(
              text: TextSpan(
                  text: "By continuing,you agree to our ",
                  style: TextStyle(
                    color: Colors.grey[250],
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: "User Agreement ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: "and acknowledge\n",
                      style: TextStyle(
                        color: Colors.grey[250],
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
            ),
          ),
          RichText(
            text: TextSpan(
              text: "that you understand the ",
              style: TextStyle(
                color: Colors.grey[250],
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          RichText(
            text: TextSpan(
              text: "Already a redditor? ",
              style: TextStyle(
                color: Colors.grey[150],
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: "Log in",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
