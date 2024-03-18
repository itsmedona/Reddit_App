import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Reddit App'),
          backgroundColor: Colors.purpleAccent),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Text(
                'Reddit App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.holiday_village),
              title: Text('Home'),
            ),
            Divider(),
            ListTile(
              title: Text('Popular'),
            ),
            Divider(),
            ListTile(
              title: Text('Subreddits'),
            ),
            Divider(),
            ListTile(
              title: Text('Settings'),
            ),
            Divider(),
            ListTile(
              title: Text('About'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
