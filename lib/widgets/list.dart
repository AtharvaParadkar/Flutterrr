import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class ListViewWidget extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item ${i + 1}");

  ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('List'),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) => Card(
          elevation: 20,
          color: const Color.fromARGB(70, 158, 158, 158),
          shadowColor: const Color.fromARGB(100, 96, 125, 139),
          child: ListTile(
            title: Text(items[i]),
          ),
        ),
      ),
    );
  }
}
