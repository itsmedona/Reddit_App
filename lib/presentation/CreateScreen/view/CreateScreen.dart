import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close, size: 35, color: Colors.black),
          onPressed: () {},
        ),
        /*title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () {},
            ),
          ],
        ),*/
      ),
    );
  }
}
