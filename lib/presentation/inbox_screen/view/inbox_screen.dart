import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // Define the number of tabs here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text("Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Tab(
              child: Text("Messages",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        title: Row(
          children: [
            Text(
              "Inbox",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              width: 150,
            ),
            InkWell(onTap: () {}, child: Icon(Icons.more_vert, size: 35)),
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
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Card(
                  shadowColor: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/redditlogo.jpg"),
                          ),
                          Text(
                            "DessertPorn:.59m",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Icon((Icons.more_vert)),
                        ],
                      ),
                      SizedBox(width: 50),
                      Text("Apple pie"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/redditlogo.jpg",
                  height: 50,
                  width: 50,
                ),
                Text("Wow, such empty"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
