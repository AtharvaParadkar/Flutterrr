import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Jay_Screens/Provider/jcartProvider.dart';
import 'package:provider/provider.dart';

class JayCart extends StatelessWidget {
  const JayCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cartItems;
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 37,
          width: 95,
          child: Image.asset('assets/images/jaylogo.jpg', fit: BoxFit.fill),
        ),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context,i){
          final item=cart[i];
          return ListTile(
            leading: Image.network(item.ItemImageUrl),
            title: Text(item.ItemTitle),
            subtitle: Text('\u{20B9} ${item.ItemPrice}'),
          );
      }),
    );
  }
}