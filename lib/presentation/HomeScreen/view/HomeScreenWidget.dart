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
                backgroundImage: AssetImage('assets/images/reddit$index.png'),
                backgroundColor: Colors.grey,
                radius: 20,
              ),
              SizedBox(width: 8.0),
              Text(
                'Username $index',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/post_$index.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description $index',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget lectus eget ipsum varius maximus. Integer ac mauris enim. Nulla facilisi.',
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 4.0),
                  Text('123 likes'),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
