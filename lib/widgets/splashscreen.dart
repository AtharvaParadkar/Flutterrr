// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/biometric_auth.dart';
import 'package:flutter_application/home.dart';
import 'package:flutter_application/loginpage.dart';
import 'package:local_auth/local_auth.dart';

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
        MaterialPageRoute(builder: (_) => const MyHomePage()),
      );
    });
    Future.delayed(Duration(milliseconds: 5500), () {
      auth = LocalAuthentication();
      _authenticate();
    });
  }

  late final LocalAuthentication auth;

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'Please Authenticate Yourself',
        options: AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false, //* Allows only biometrics no password/pin
        ),
      );
      print('Authenticated : $authenticated');
    } on PlatformException catch (c) {
      print(c);
    }
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
