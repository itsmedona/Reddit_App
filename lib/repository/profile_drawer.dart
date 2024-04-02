import 'package:clone_app/presentation/ProfileScreen/view/ProfileScreen.dart';
import 'package:flutter/material.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({super.key});

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // Avatar and username
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/reddit2.jpg"),
              radius: 70,
            ),
            const SizedBox(height: 10),
            Text(
              'u/MeeraPM',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            // Online status
            Container(
              height: 35,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Online Status: On",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Style Avatar button
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.drafts_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text("Style Avatar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            // Karma, Achievements, Reddit Age
            Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notification_add), // Icon for Karma
                    SizedBox(width: 50),
                    Icon(Icons.troubleshoot), // Icon for Achievements
                    SizedBox(width: 50),
                    Icon(Icons.cake), // Icon for Reddit Age
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 50),
                    Text("1", // Karma Value
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(width: 100),
                    Text("3", // Achievements Value
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(width: 100),
                    Text("6d", // Reddit Age Value
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 50),
                    Text("Karma", // Text for Karma
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(width: 10),
                    Text("Achievements", // Text for Achievements
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(width: 10),
                    Text("Reddit age", // Text for Reddit Age
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
            Divider(),
            // Drawer Items
            ListTile(
              title: const Text('My Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: const Icon(Icons.person),
              onTap: () => ProfileScreen(),
            ),
            ListTile(
              title: const Text('Create a community',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: const Icon(Icons.commute_sharp),
            ),
            ListTile(
              title: const Text('Contributor Program',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: const Icon(Icons.dark_mode_outlined),
            ),
            ListTile(
              title: const Text('Vault',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: const Icon(Icons.dangerous),
            ),
            ListTile(
              title: const Text('Reddit Premium',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: const Icon(Icons.access_alarm),
            ),
            ListTile(
              title: const Text('Saved',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: Icon(
                Icons.logout,
              ),
            ),
            ListTile(
              title: const Text('Settings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              leading: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
