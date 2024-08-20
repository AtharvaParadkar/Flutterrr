import 'package:flutter/material.dart';

class JayRewardsPage extends StatefulWidget {
  const JayRewardsPage({super.key});

  @override
  State<JayRewardsPage> createState() => _JayRewardsPageState();
}

class _JayRewardsPageState extends State<JayRewardsPage> {
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
