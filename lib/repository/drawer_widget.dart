import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Recently Visited',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        child: Image.asset("assets/images/reddit1.jpg")),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'r/IndiaCricket',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                        radius: 15,
                        child: Image.asset("assets/images/reddit2.jpg")),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'r/IndianFashionAddicts',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Your Communities'),
            trailing: Icon(Icons.arrow_drop_down),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Create a Community'),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit3.jpg")),
            title: Text('r/announcements'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit4.jpg")),
            title: Text('r/BollyBIndsNGossip'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit5.jpg")),
            title: Text('r/bollywood'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit6.jpg")),
            title: Text('r/burgers'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit1.jpg")),
            title: Text('r/DessertPorn'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit2.jpg")),
            title: Text('r/IndiaCricket'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit3.jpg")),
            title: Text('r/IndianFood'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit4.jpg")),
            title: Text('r/IndianPets'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit5.jpg")),
            title: Text('r/InstaCelebsGossip'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit6.jpg")),
            title: Text('r/Pizza'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 15, child: Image.asset("assets/images/reddit1.jpg")),
            title: Text('r/vegetarianrecipes'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          ListTile(
            leading: Icon(Icons.local_activity),
            title: Text('Custom Feeds'),
            trailing: Icon(Icons.star_border_outlined),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.circle_outlined),
            title: Text('All'),
            onTap: () {
              // Add functionality for handling settings
            },
          ),
        ],
      ),
    );
  }
}
