import 'package:flutter/material.dart';
import 'package:flutter_application/modal/jaymodal.dart';

class CartProvider extends ChangeNotifier{
  final List<Jaymodal> _cartItems=[];

  List<Jaymodal> get cartItems=> _cartItems;

  void addToCart(Jaymodal item){
    _cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(Jaymodal item){
    _cartItems.remove(item);
    notifyListeners();
  }
}