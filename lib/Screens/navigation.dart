import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/JayCategoryPage.dart';
import 'package:flutter_application/Screens/jhome.dart';
import 'package:flutter_application/Screens/jprofile.dart';
import 'package:flutter_application/Screens/jrewards.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  PageController pagesController = PageController();
  int selectedIndex=0;

  void onTapped(int index){
    setState(() {
      selectedIndex=index;
      pagesController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pagesController,
        children: [
          JayHomePage(),
          JayCategoryPage(),
          JayRewardsPage(),
          JayProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_outlined),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onTapped,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
