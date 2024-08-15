import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';
import 'package:flutter_application/widgets/list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Flutterrr'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 0, 0, 255),
                      Color.fromARGB(130, 0, 0, 255),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    'List',
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    'List View',
                    style: const TextStyle(fontSize: 15),
                  ),
                  textColor: Colors.white,
                  // tileColor: const Color.fromARGB(255, 0, 0, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ListViewWidget()),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
