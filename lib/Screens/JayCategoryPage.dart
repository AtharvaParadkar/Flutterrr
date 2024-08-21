import 'package:flutter/material.dart';
import 'package:flutter_application/modal/jaycategorymodal.dart';
import 'package:flutter_application/modal/jaymodal.dart';

class JayCategoryPage extends StatefulWidget {
  const JayCategoryPage({super.key});

  @override
  State<JayCategoryPage> createState() => _JayCategoryPageState();
}

class _JayCategoryPageState extends State<JayCategoryPage> {
  final List<JayCategoryModel> CProducts = [
    JayCategoryModel(
        CItemImageUrl:
            'https://m.media-amazon.com/images/I/51A2cEBcKFL._AC_UF1000,1000_QL80_.jpg',
        CItemTitle: 'Automotive Switches'),
    JayCategoryModel(
        CItemImageUrl:
            'https://www.huf-group.com/sites/default/files/styles/dd_page_content_width/public/news/images/huf-flush-door-handle-rotatable-open-car.jpg?itok=UrJXcMc4',
        CItemTitle: 'Car Door Handles'),
    JayCategoryModel(
        CItemImageUrl:
            'https://parkers-images.bauersecure.com/wp-images/182460/1200x800/001-best-steering-wheel-lock.jpg?mode=max&quality=90&scale=down',
        CItemTitle: 'Steering Locks'),
    JayCategoryModel(
        CItemImageUrl: 'https://m.media-amazon.com/images/I/9152KBVOtfL.jpg',
        CItemTitle: 'Door Locks'),
    JayCategoryModel(
        CItemImageUrl: 'https://m.media-amazon.com/images/I/81If4yf1LaL.jpg',
        CItemTitle: 'Motorcycle Locks'),
  ];

  final List<Jaymodal> products = [
    Jaymodal(
      ItemImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQR7RwfNQ9oCjQcxm6bY7lYLt5ON6PxCxSlg&s',
      ItemTitle: 'Black Automotive Electrical Switches',
      ItmeClass: 'For Automobile',
      ItemPrice: 90,
    ),
    Jaymodal(
      ItemImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROUHaWQjMj1MTvSgSln7j_HmbhslZK9aLQrA&s',
      ItemTitle: 'Handle Bar Switches',
      ItmeClass: 'For Automobile',
      ItemPrice: 900,
      BestSeller: true,
    ),
    Jaymodal(
      ItemImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzmO37evMptVmFuM607isuPwf4lSgwxuKHpg&s',
      ItemTitle: 'CND Switches',
      ItmeClass: 'For Automobile',
      ItemPrice: 600,
    ),
    Jaymodal(
      ItemImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvt4C1QuyGUIzrWvtIiWyJLKZGNC7BByM4Vw&s',
      ItemTitle: 'Motorcycle Ignition Switches',
      ItmeClass: 'For Automobile',
      ItemPrice: 1200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 37,
          width: 95,
          child: Image.asset('assets/images/jaylogo.jpg', fit: BoxFit.fill),
        ),
        automaticallyImplyLeading: false,
        actions: [
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
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 240,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
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
                  SizedBox(width: 20),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(2, 5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.tune_sharp,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Products & Services',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(width: 3),
                  Icon(Icons.arrow_circle_right_outlined, size: 19)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: CProducts.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(CProducts[i].CItemImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   maxRadius: 45,
                      //   child: Container(
                      //     child: Image.network(
                      //       CProducts[i].CItemImageUrl,
                      //       fit: BoxFit.fill,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 35,
                        width: 80,
                        child: Text(
                          CProducts[i].CItemTitle,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
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
