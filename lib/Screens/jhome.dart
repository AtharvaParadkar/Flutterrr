import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/modal/jaymodal.dart';

class JayHomePage extends StatefulWidget {
  const JayHomePage({super.key});

  @override
  State<JayHomePage> createState() => _JayHomePageState();
}

class _JayHomePageState extends State<JayHomePage> {
  final List<String> _categories = [
    'ALL',
    'Switches',
    'Door Locks',
    'Car Door Locks',
    'Handles'
  ];

  final List<Jaymodal> products = [
    Jaymodal(
      ItemImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQR7RwfNQ9oCjQcxm6bY7lYLt5ON6PxCxSlg&s',
      ItemTitle: 'Black Automotive Electrical Switches',
      ItmeClass: 'For Auto',
      ItemPrice: 90,
    ),
    Jaymodal(
        ItemImageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROUHaWQjMj1MTvSgSln7j_HmbhslZK9aLQrA&s',
        ItemTitle: 'Handle Bar Switches',
        ItmeClass: 'For Auto1',
        ItemPrice: 900,
        BestSeller: true),
  ];
  @override
  Widget build(BuildContext context) {
    int _onSelectedCategory = 0;
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
          Icon(Icons.shopping_bag_outlined, size: 30),
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
            SizedBox(height: 20),
            Container(
              height: 50,
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                key: ValueKey<int>(_onSelectedCategory),
                itemCount: _categories.length,
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
                          _categories[index],
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
                height: MediaQuery.of(context).size.height / 2,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, i) => ProductItems(
                    product: products[i],
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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.network(
                    product.ItemImageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  product.ItemTitle,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), 
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  product.ItmeClass,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  '\u{20B9}${product.ItemPrice.toStringAsFixed(0)}',
                  style: TextStyle(color: Colors.grey),
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

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Top-left corner with a circular cut
    path.moveTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);

    // Top-right corner (rectangular)
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 20);

    // Bottom-right corner with a circular cut
    path.quadraticBezierTo(
        size.width, size.height, size.width - 20, size.height);

    // Bottom-left corner (rectangular)
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
