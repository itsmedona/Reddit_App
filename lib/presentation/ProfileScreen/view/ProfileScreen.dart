import 'package:clone_app/presentation/ProfileScreen/controller/profile_screen_controller.dart';
import 'package:clone_app/repository/followerslist_tab_widget.dart';
import 'package:clone_app/repository/followinglist_tab_widget.dart';
import 'package:clone_app/repository/profile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  fetchData() {
    Provider.of<ProfileController>(context, listen: false).fetchProfile(context);
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(builder: (context, controller, _) {
      return controller.isLoadingProfile
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text('Profile'),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              drawer: ProfileDrawer(),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "${controller.userProfileModel.data?.profileImage ?? "https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg"}"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          controller.userProfileModel.data?.username ?? "no username",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "${controller.userProfileModel.data?.postCount ?? "0"}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'posts',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FollowersList()),
                                );
                              },
                              child: Text(
                                "${controller.userProfileModel.data?.followersCount ?? "0"}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'followers',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FollowingList()),
                                );
                              },
                              child: Text(
                                '${controller.userProfileModel.data?.followingCount ?? "0"}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'following',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Edit Profile'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Share Profile'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
