import 'package:flutter/material.dart';

class GymboxAccount extends StatelessWidget {
  const GymboxAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Gymbox_Images/gymbox_logo.png',
          fit: BoxFit.fill,
        ),
        automaticallyImplyLeading: false,
      ),
      
    );
  }
}