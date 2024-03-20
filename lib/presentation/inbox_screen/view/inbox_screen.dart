import 'package:clone_app/repository/drawer_widget.dart';
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
              child: Image.asset("assets/images/reddit1.jpg"),
            ),
          ],
        ),
      ),
      drawer: drawer(),
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
                                AssetImage("assets/images/reddit1.jpg"),
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
                  "assets/images/reddit1.jpg",
                  height: 100,
                  width: 100,
                ),
                Text("Wow, such empty",
                    style: TextStyle(
                      fontSize: 15,
                    )),
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
