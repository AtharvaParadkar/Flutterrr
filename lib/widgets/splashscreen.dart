// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/biometric_auth.dart';
import 'package:flutter_application/home.dart';
import 'package:flutter_application/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const BiometricAuth()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 0, 0),
              Color.fromARGB(255, 255, 255, 0),
              Color.fromARGB(255, 0, 255, 0),
              Color.fromARGB(255, 0, 255, 255),
              Color.fromARGB(255, 0, 0, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.network(
                'https://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp'),
          ),
        ),
      ),
    );
  }
}
