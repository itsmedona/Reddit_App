import 'package:flutter/material.dart';
import 'HomeScreenWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_drop_down_sharp),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        centerTitle: false,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
          );
        }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
          GestureDetector(
            onTap: () {
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.list),
                    title: Text("GFG item $index"),
                    trailing: Icon(Icons.done),
                  );
                },
                itemCount: 10,
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/reddit10.png'),
              radius: 15,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Post(index);
        },
      ),
    );
  }
}
