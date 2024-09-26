import 'package:flutter/material.dart';

class BookingCategoryFilter extends StatelessWidget {
  const BookingCategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Gymbox_Images/gymbox_logo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}