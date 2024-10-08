import 'package:flutter/material.dart';

class Jaymodal {
  final String ItemImageUrl, ItemTitle, ItmeClass;
  final double ItemPrice;
  final bool BestSeller;

  Jaymodal({
    this.BestSeller = false,
    required this.ItemImageUrl,
    required this.ItemTitle,
    required this.ItmeClass,
    required this.ItemPrice,
  });
}


class JayCategoryModel {
  final String CItemImageUrl, CItemTitle;

  JayCategoryModel({required this.CItemImageUrl, required this.CItemTitle});
}

class JayAccountModel{
  final String AccountOptions;
  final Icon AccountIcon;

  JayAccountModel({required this.AccountOptions, required this.AccountIcon});
}
