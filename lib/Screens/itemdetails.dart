import 'package:flutter/material.dart';
import 'package:flutter_application/modal/jaymodal.dart';

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
      body: Container(
        height: 300,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 7,
              child: Image.network(widget.item.ItemImageUrl, fit: BoxFit.cover),
            ),
            Text(widget.item.ItemTitle),
            Text('${widget.item.ItemPrice.toString()}'),
          ],
        ),
      ),
    );
  }
}
