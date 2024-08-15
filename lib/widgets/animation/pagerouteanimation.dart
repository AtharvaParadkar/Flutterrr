import 'package:flutter/material.dart';
import 'package:flutter_application/animation/animated.dart';
import 'package:flutter_application/widgets/appbar.dart';

class PageRouteAnimation extends StatelessWidget {
  const PageRouteAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Page Route Animation'),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Goo!'),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Animated(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begins = Offset(0.0, 1.0);
      const ends = Offset.zero;
      const curves = Curves.fastOutSlowIn;

      var tweens =
          Tween(begin: begins, end: ends).chain(CurveTween(curve: curves));

      return SlideTransition(
        position: animation.drive(tweens),
        child: child,
      );
    },
  );
}
