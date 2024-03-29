import 'package:clone_app/global_widgets/InterestsScreen/view/InterestsScreen.dart';
import 'package:flutter/material.dart';
import '../../../presentation/ChatScreen/view/ChatScreen.dart';
import '../../../presentation/CommunityScreen/view/CommunityScreen.dart';
import '../../../presentation/CreateScreen/view/CreateScreen.dart';
import '../../../presentation/HomeScreen/view/HomeScreen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    CommunityScreen(),
    CreateScreen(),
    ChatScreen(),
    InterestsScreen(),
    //InboxScreen(),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
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
        ],
      ),
    );
  }
}
