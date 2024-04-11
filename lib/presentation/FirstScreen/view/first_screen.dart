import 'package:clone_app/presentation/about_you_screen/view/about_you_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    // Wrap the navigation inside a method to avoid calling it directly in the build method
    navigateToNextScreen();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/redditlogo.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: Text(
                "All your interests\n   in one place",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            buildButton(Icons.phone_android, "Continue with phone number"),
            SizedBox(height: 10),
            buildButton(Icons.g_mobiledata, "Continue with Google"),
            SizedBox(height: 10),
            buildButton(Icons.email_outlined, "Continue with Email"),
            SizedBox(height: 20),
            buildAgreementText(),
            SizedBox(height: 25),
            buildLoginText(),
          ],
        ),
      ),
    );
  }

  Widget buildButton(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
              ),
              SizedBox(width: 25),
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAgreementText() {
    return RichText(
      text: TextSpan(
        text: "By continuing, you agree to our ",
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
            text: "and acknowledge",
            style: TextStyle(
              color: Colors.grey[250],
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginText() {
    return RichText(
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
    );
  }

  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AboutyouScreen()),
      );
    });
  }
}
