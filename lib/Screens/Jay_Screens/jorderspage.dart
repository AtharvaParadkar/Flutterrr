import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Jay_Screens/JayCategoryPage.dart';
import 'package:flutter_application/Screens/Jay_Screens/itemdetails.dart';
import 'package:flutter_application/data/jay_dummy_data.dart';
import 'package:flutter_application/modal/jaymodal.dart';

class JayOrdersPage extends StatelessWidget {
  const JayOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, i) {
                    Jaymodal model = products[i];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ItemDetails(item: model)),
                        );
                      },
                      child: ProductItems(
                        product: products[i],
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }
}