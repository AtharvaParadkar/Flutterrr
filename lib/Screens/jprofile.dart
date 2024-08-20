import 'package:flutter/material.dart';

class JayProfilePage extends StatefulWidget {
  const JayProfilePage({super.key});

  @override
  State<JayProfilePage> createState() => _JayProfilePageState();
}

class _JayProfilePageState extends State<JayProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 37,
          width: 95,
          child: Image.asset('assets/images/jaylogo.jpg', fit: BoxFit.fill),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.favorite_border_rounded, size: 30),
          SizedBox(width: 20),
          Icon(Icons.shopping_bag_outlined, size: 30),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
