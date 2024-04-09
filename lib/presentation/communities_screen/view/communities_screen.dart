import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:clone_app/database/db.dart';
import 'package:clone_app/presentation/community_search_screen/view/community_search_screen.dart';
import 'package:clone_app/repository/community_screen_widget.dart';
import 'package:clone_app/repository/drawer_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});


  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
/////
   Future<void> fetchCommunityData() async {
    final response =
        await http.get(Uri.parse('https://api.example.com/communities'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load community data');
    }
  }
////////

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Communities",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CommunitySearchScreen(),
                ),
              );
            },
            icon: Icon(Icons.search, size: 35),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/reddit3.jpg"),
          ),
        ],
      ),
      drawer: drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "More like vegetarian recipes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_right),
                ],
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          CommunityScreenWidget(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Community spotlights",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                child: CarouselSlider.builder(
                    itemCount: 1,
                    itemBuilder: (context, index, realIndex) => Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(22)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Text(
                                "Explore life in India, from memes to tips and beyond, all at one place",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 15),
                            Container(
                              height: 150,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/flower.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 15,
                                    child: Image.asset(
                                        "assets/images/reddit1.jpg")),
                                Column(
                                  children: [
                                    Text("India Social"),
                                    Text("843k members"),
                                  ],
                                ),
                                Spacer(),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 22, 2, 102),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "join",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )),
                    options: CarouselOptions(
                        height: 300, autoPlay: true, viewportFraction: 1)),
              ),
              SizedBox(height: 25),
              Text(
                "Trending in India",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          CommunityScreenWidget(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Top in India",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          CommunityScreenWidget(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "More like Bollywood",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          CommunityScreenWidget(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Trending Globally",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          CommunityScreenWidget(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Top Globally",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    child: ListView.builder(
                      //scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) =>
                          CommunityScreenWidget(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.track_changes),
                  Text(
                    "Community top Charts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: communitytopcharts.length,
                        itemBuilder: (Builder, index) => ListTile(
                              title: Text(
                                communitytopcharts[index],
                              ),
                              trailing: Icon(Icons.arrow_right),
                            ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
