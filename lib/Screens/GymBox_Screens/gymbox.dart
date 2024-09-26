import 'package:flutter/material.dart';

class GymBox extends StatefulWidget {
  const GymBox({super.key});

  @override
  State<GymBox> createState() => _GymBoxState();
}

class _GymBoxState extends State<GymBox> {
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
