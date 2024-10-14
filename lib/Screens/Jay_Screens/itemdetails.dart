import 'package:flutter/material.dart';
import 'package:flutter_application/modal/jaymodal.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class ItemDetails extends StatefulWidget {
  ItemDetails({required this.item});
  Jaymodal item;

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 250,
            width: MediaQuery.sizeOf(context).width,
            child: Image.network(widget.item.ItemImageUrl, fit: BoxFit.contain),
          ),
          Gap(20),
          Text(widget.item.ItemTitle,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Gap(10),
          Text('\u{20B9} ${widget.item.ItemPrice.toString()}',style: TextStyle(fontSize: 20),),
          Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
            height: 40,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(200, 255, 0, 0),
                  Color.fromARGB(150, 255, 0, 0),
                  Color.fromARGB(200, 255, 0, 0),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
                    ),
          ),
          Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
            height: 40,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(200, 255, 0, 0),
                  Color.fromARGB(150, 255, 0, 0),
                  Color.fromARGB(200, 255, 0, 0),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
                    ),
          ),
        ],
      ),
    );
  }
}
