import 'package:flutter/material.dart';

Widget Post(int index) {
  return Card(
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
              Text(
                'r/bollywood',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.more_vert_outlined),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'If this is prank, then its really bad one!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget lectus eget ipsum varius maximus. Integer ac mauris enim. Nulla facilisi.',
              ),
              SizedBox(height: 8.0),
            ],
          ),
        ),
        Image.asset(
          'assets/images/homescreen.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_upward_outlined,
                    size: 10,
                  ),
                  Text("486"),
                  Icon(
                    Icons.arrow_downward_outlined,
                    size: 10,
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.message_outlined),
                  Text("64 Comments"),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.forward),
                  Text("26"),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
