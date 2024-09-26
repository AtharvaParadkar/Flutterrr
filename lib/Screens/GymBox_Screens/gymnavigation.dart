import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/GymBox_Screens/gymaccount.dart';
import 'package:flutter_application/Screens/GymBox_Screens/gymbox.dart';

class GymNavigation extends StatefulWidget {
  const GymNavigation({super.key});

  @override
  State<GymNavigation> createState() => _GymNavigationState();
}

class _GymNavigationState extends State<GymNavigation> {
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
    return 
  Scaffold(
      body: PageView(
        controller: pagesController,
        children: [
          GymBox(),
          GymboxAccount(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onTapped,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
