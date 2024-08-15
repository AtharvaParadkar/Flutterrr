import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class Animated extends StatelessWidget {
  const Animated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Routed Page'),
      body: const Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
