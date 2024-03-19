import 'package:clone_app/database/db.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunitySearchScreen extends StatefulWidget {
  const CommunitySearchScreen({super.key});

  @override
  State<CommunitySearchScreen> createState() => _CommunitySearchScreenState();
}

class _CommunitySearchScreenState extends State<CommunitySearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        leading: Icon(Icons.arrow_back, size: 35),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search Reddit',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 160),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 52, 50, 50),
                    radius: 10,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending Today",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              communitysearchitems[index]["title"],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 16, 88, 147),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Image(
                              height: 25,
                              width: 25,
                              image: AssetImage(
                                  communitysearchitems[index]["image"]),
                            ),
                          ],
                        ),
                        Text(communitysearchitems[index]["subtitle"]),
                        Divider(
                          thickness: 3,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: communitysearchitems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
