import 'package:clone_app/database/db.dart';
import 'package:clone_app/repository/drawer_widget.dart';
import 'package:clone_app/repository/profile_drawer.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Chat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                width: 150,
              ),
              InkWell(onTap: () {}, child: Icon(Icons.tune, size: 35)),
              SizedBox(
                width: 35,
              ),
              InkWell(
                onTap: () {
                  ProfileDrawer();
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset("assets/images/reddit1.jpg"),
                ),
              ),
            ],
          ),
        ),
        drawer: drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: [
                Text(
                  "Discover channels",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Spacer(),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: chatscreenitems.length,
                        // scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          margin: EdgeInsets.all(8.0),
                          width: 200.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 25,
                                child: Image.asset(
                                  chatscreenitems[index]['image'],
                                  height: 100.0,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    chatscreenitems[index]['title'],
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    chatscreenitems[index]['subtitle'],
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Threads",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Spacer(),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  child: Image.asset(
                    "assets/images/reddit1.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Welcome to chat!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Chat with other Redditors about your favourite ",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              "topics ",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 2, 83),
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Explore channels",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble,
                            color: Color.fromARGB(255, 12, 2, 83),
                          ),
                          Positioned(
                            child: Icon(
                              Icons.add,
                              size: 10,
                              color: Colors.white,
                            ),
                            right: 5.0,
                            bottom: 5.0,
                            top: 5,
                            left: 5,
                          ),
                        ],
                      )),
                )
              ],
            ),
          ]),
        ));
  }
}
