import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatefulWidget {
  @override
  _AvatarScreenState createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  final List<String> images = [
    'assets/images/reddit16.png',
    'assets/images/reddit15.png',
    'assets/images/reddit11.png',
    'assets/images/reddit14.png',
    'assets/images/reddit13.png',
    'assets/images/reddit12.png',
    'assets/images/reddit10.png',
    'assets/images/reddit9.png',
    'assets/images/reddit8.png',
  ];
  final List<String> names = [
    'Starry Night',
    'Adventure Awaits',
    'Dreamland Escape',
    'Sunny Side Up',
    'Twilight Magic',
    'Ocean Breeze',
    'Enchanted Forest',
    'Golden Hour',
    'Whimsical Wonderland',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35, color: Colors.black),
          onPressed: () { },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 30),
            Image.asset(
              'assets/images/reddit_icon.png',
              height: 40,
            ),
            SizedBox(width: 10),
            Text(
              'Skip',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 400, // Adjust the height as needed
            child: Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: images.asMap().entries.map((entry) {
                  int index = entry.key;
                  String item = entry.value;
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                                width: 1000,
                              ),
                            ),
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  _currentIndex == 0
                      ? null
                      : setState(() {
                          _currentIndex--;
                        });
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  _currentIndex == images.length - 1
                      ? null
                      : setState(() {
                          _currentIndex++;
                        });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
