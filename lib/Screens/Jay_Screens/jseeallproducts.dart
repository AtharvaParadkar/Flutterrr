import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Jay_Screens/itemdetails.dart';
import 'package:flutter_application/data/jay_dummy_data.dart';
import 'package:flutter_application/modal/jaymodal.dart';
import 'package:gap/gap.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 37,
          width: 95,
          child: Image.asset('assets/images/jaylogo.jpg', fit: BoxFit.fill),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.3,
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

class ProductItems extends StatelessWidget {
  const ProductItems({super.key, required this.product});
  final Jaymodal product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Image.network(
                        product.ItemImageUrl,
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                      Gap(7),
                      Text(
                        product.ItemTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Gap(3),
                      Text(
                        product.ItmeClass,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Gap(3),
                      Text(
                        '\u{20B9}${product.ItemPrice.toStringAsFixed(0)}',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (product.BestSeller)
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
