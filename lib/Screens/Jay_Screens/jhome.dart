import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Jay_Screens/itemdetails.dart';
import 'package:flutter_application/Screens/Jay_Screens/jcart.dart';
import 'package:flutter_application/data/jay_dummy_data.dart';
import 'package:flutter_application/modal/jaymodal.dart';

class JayHomePage extends StatefulWidget {
  const JayHomePage({super.key});

  @override
  State<JayHomePage> createState() => _JayHomePageState();
}

class _JayHomePageState extends State<JayHomePage> {
  int _onSelectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    // Determine the selected category
    String selectedCategory = categories[_onSelectedCategory];

    List<Jaymodal> _filteredProducts = _onSelectedCategory == 0
        ? products
        : products
            .where((product) => product.ItmeClass == selectedCategory)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 37,
          width: 95,
          child: Image.asset('assets/images/jaylogo.jpg', fit: BoxFit.fill),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.notifications_none_rounded, size: 30),
          SizedBox(width: 20),
          Icon(Icons.favorite_border_rounded, size: 30),
          SizedBox(width: 20),
          InkWell(
            onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (_)=>JayCart())),
            child: Icon(Icons.shopping_bag_outlined, size: 30),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //~ Search Box
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: Offset(2, 5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search anything',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //~ Blurred Stack
            Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 5; i++) BlurredStack(),
                  ],
                ),
              ),
            ),
            //~ Categories
            SizedBox(height: 20),
            Container(
              height: 50,
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                key: ValueKey<int>(_onSelectedCategory),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _onSelectedCategory = index;
                        print(_onSelectedCategory);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: _onSelectedCategory == index
                            ? Colors.red
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: _onSelectedCategory == index ? 18 : 16,
                            color: _onSelectedCategory == index
                                ? Colors.white
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Recently Added'),
                Icon(Icons.keyboard_arrow_down_sharp),
                SizedBox(width: 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                // height: MediaQuery.of(context).size.height / 2,
                height: MediaQuery.of(context).size.height * 0.6,
                child: _filteredProducts.isNotEmpty
                    ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: _filteredProducts.length,
                        itemBuilder: (context, i) {
                          Jaymodal model = _filteredProducts[i];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => ItemDetails(item: model)),
                              );
                            },
                            child: ProductItems(
                              product: _filteredProducts[i],
                            ),
                          );
                        },
                      )
                    : Center(
                        child: Text(
                          'No Products found in this Category.',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlurredStack extends StatelessWidget {
  const BlurredStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 250,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 10,
            child: Container(
              height: 20,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Shop now',
                    style: TextStyle(fontSize: 9, color: Colors.orange),
                  ),
                  SizedBox(width: 2.5),
                  Icon(Icons.chevron_right, size: 9),
                ],
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 20,
            child: SizedBox(
              width: 200,
              child: Text('Get Exciting Offers & Rewards on Switches',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Card(
                  elevation: 5,
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.network(
                    product.ItemImageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(child: Icon(Icons.broken_image));
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  product.ItemTitle,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  product.ItmeClass,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Text(
                // textAlign: TextAlign.left,
                '\u{20B9}${product.ItemPrice.toStringAsFixed(0)}',
                style: TextStyle(color: Colors.grey),
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
