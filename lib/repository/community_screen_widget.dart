import 'package:flutter/material.dart';

class CommunityScreenWidget extends StatefulWidget {
  const CommunityScreenWidget({Key? key}) : super(key: key);

  @override
  State<CommunityScreenWidget> createState() => _CommunityScreenWidgetState();
}

class _CommunityScreenWidgetState extends State<CommunityScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1),
        ),
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/reddit1.jpg'),
                    backgroundColor: Colors.grey,
                    radius: 20,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BollywoodFashion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("490k members"),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 11, 3, 102),
                    ),
                    child: Text(
                      "Join",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discuss the fashion and stylistic choices of Bollywood stars and other Indian celebrities.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
