import 'package:clone_app/database/db.dart';
import 'package:clone_app/presentation/community_search_screen/view/community_search_screen.dart';
import 'package:clone_app/repository/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => CommunitySearchScreen()),
                  );
                },
                child: Icon(Icons.search, size: 35)),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 25,
              child: Image.asset("assets/images/reddit3.jpg"),
            ),
          ],
        ),
      ),
      drawer: drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: chatscreenitems.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                      height: 100,
                      width: 100.0,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  image: AssetImage("assets/images/flower.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              CircleAvatar(
                                  radius: 15,
                                  child:
                                      Image.asset("assets/images/reddit1.jpg")),
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
                      height: 415, autoPlay: true, viewportFraction: 1)),
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
    );
  }
}
