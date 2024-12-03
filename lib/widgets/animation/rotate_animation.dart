import 'dart:math';

import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  const RotationAnimation({super.key});

  @override
  State<RotationAnimation> createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
  animationController=AnimationController(vsync: this,duration: const Duration(seconds: 4))..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(animation: animationController,
          builder: (context,Widget? child){
          return Transform.rotate(angle: animationController.value*pi,
            child: Padding(
              padding: const EdgeInsets.all(10),
                child: Image.asset('assets/taxi/sedan.png'),
              ),
            );
          },
        ),
      ),
    );
  }
}
