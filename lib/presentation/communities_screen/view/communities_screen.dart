import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Communities",
            ),
            SizedBox(
              width: 100,
            ),
            InkWell(onTap: () {}, child: Icon(Icons.search, size: 35)),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 25,
              child: Image.asset("assets/images/redditlogo.jpg"),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Recently Visited',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'r/IndiaCricket',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(radius: 15, backgroundColor: Colors.red),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'r/IndianFashionAddicts',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Your Communities'),
              trailing: Icon(Icons.arrow_drop_down),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Create a Community'),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/announcements'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/BollyBIndsNGossip'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/bollywood'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/burgers'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/DessertPorn'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/IndiaCricket'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/IndianFood'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/IndianPets'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/InstaCelebsGossip'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/Pizza'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: CircleAvatar(radius: 15, backgroundColor: Colors.red),
              title: Text('r/vegetarianrecipes'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            ListTile(
              leading: Icon(Icons.local_activity),
              title: Text('Custom Feeds'),
              trailing: Icon(Icons.star_border_outlined),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text('All'),
              onTap: () {
                // Add functionality for handling settings
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "More like vegetarianrecipes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Icon(Icons.arrow_right),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
