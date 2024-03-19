import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home'), backgroundColor: Colors.purpleAccent),
      /*drawer: Drawer(
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
              leading: Image.asset('assets/images/reddit16.png'),
              title: Text('Home'),
              trailing: Icon(Icons.star_border_outlined),
            ),
            Divider(),
            ListTile(
              leading: Image.asset('assets/images/reddit16.png'),
              title: Text('Popular'),
              trailing: Icon(Icons.star_border_outlined),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                  'assets/images/reddit11.png'),
              title: Text('Subreddits'),
              trailing: Icon(Icons.star_border_outlined),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                  'assets/images/reddit10.png'), 
              title: Text('Settings'),
              trailing: Icon(Icons.star_border_outlined),
            ),
            Divider(),
            ListTile(
              leading: Image.asset(
                  'assets/images/reddit5.png'), 
              title: Text('About'),
              trailing: Icon(Icons.star_border_outlined),
            ),
            Divider(),
          ],
        ),
      ),*/
    );
  }
}
