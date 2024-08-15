import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Grid'),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, i) => Card(
          clipBehavior: Clip.hardEdge,
          elevation: 40,
          color: const Color.fromARGB(70, 158, 158, 158),
          shadowColor: const Color.fromARGB(100, 96, 125, 139),
          child: Column(
            children: [
              Expanded(
                child: Image.network('https://images.pexels.com/photos/10047508/pexels-photo-10047508.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
