import 'dart:developer';

import 'package:clone_app/presentation/chat_screen/view/chat_screen.dart';
import 'package:clone_app/presentation/communities_screen/view/communities_screen.dart';
import 'package:clone_app/presentation/create_screen/view/create_screen.dart';
import 'package:clone_app/presentation/home_screen/view/home_screen.dart';
import 'package:clone_app/presentation/inbox_screen/view/inbox_screen.dart';
import 'package:clone_app/presentation/ProfileScreen/view/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/bottom_nav_con';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Consumer<BottomNavigationController>(
          builder: (context, provider, child) {
            return IndexedStack(
              index: provider.currentIndex,
              children: [
                HomeScreen(),
                CommunityScreen(),
                CreateScreen(),
                ChatScreen(),
                InboxScreen(),
                ProfileScreen()
              ],
            );
          },
        ),
        bottomNavigationBar: Consumer<BottomNavigationController>(
          builder: (context, provider, child) {
            return Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BottomNavigationBar(
                  onTap: (index) {
                    provider.currentIndex = index;
                    log("tapped ${provider.currentIndex}");
                  },
                  type: BottomNavigationBarType.shifting,
                  currentIndex: provider.currentIndex,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: Colors.black,
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_rounded),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.groups),
                      label: 'Communities',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.add),
                      label: 'Create',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.chat_rounded),
                      label: 'Chat',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.notifications),
                      label: 'Inbox',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'Profile')
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
