import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with SingleTickerProviderStateMixin {
  //~ 1
  double _width = 50;
  double _height = 50;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  //? 2
  bool _isExpanded = false;

  //& 3 Opacity Animation
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _rotationAnimation;
  late Animation<double> _opacityAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _positionAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, 1),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _sizeAnimation = Tween<double>(
      begin: 50.0,
      end: 150.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 2 * 3.14, // 360 degrees in radians
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _opacityAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Animation'),
      body: Center(
        child: Column(
          children: [
            //~ 1
            AnimatedContainer(
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOutBack,
            ),
            const Divider(),
            //? 2
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: _isExpanded ? 200 : 70,
              width: _isExpanded ? 200 : 70,
              color: _isExpanded
                  ? const Color.fromARGB(255, 255, 0, 0)
                  : const Color.fromARGB(255, 0, 0, 255),
              alignment: _isExpanded ? Alignment.center : Alignment.topCenter,
              curve: Curves.easeInOutBack,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: const FlutterLogo(size: 80),
              ),
            ),
            const Divider(),
            //& 3 Opacity Animation
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: _opacityAnimation.value,
                  child: Transform.translate(
                    offset: _positionAnimation.value,
                    child: Transform.rotate(
                      angle: _rotationAnimation.value,
                      child: Container(
                        width: _sizeAnimation.value,
                        height: _sizeAnimation.value,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //~ 1
          setState(() {
            final random = Random();
            _width = random.nextInt(200).toDouble().clamp(50, 200);
            _height = random.nextInt(200).toDouble().clamp(50, 200);
            _color = Color.fromARGB(
              random.nextInt(255),
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            );
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
          //? 2
          setState(() {
            _isExpanded = !_isExpanded;
          });
          //& 3 Opacity Animation
          if (_controller.status == AnimationStatus.completed) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
