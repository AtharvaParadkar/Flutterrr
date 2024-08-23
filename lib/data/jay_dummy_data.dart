import 'package:flutter/material.dart';
import 'package:flutter_application/modal/jaymodal.dart';

final List<String> categories = [
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

final List<JayAccountModel> account = [
  JayAccountModel(
    AccountOptions: 'My Orders',
    AccountIcon: Icon(Icons.shopping_bag_outlined),
  ),
  JayAccountModel(
    AccountOptions: 'My Favorite',
    AccountIcon: Icon(Icons.favorite_border_rounded),
  ),
  JayAccountModel(
    AccountOptions: 'Credits & Coupons',
    AccountIcon: Icon(Icons.local_offer_outlined),
  ),
  JayAccountModel(
    AccountOptions: 'Shipping Address',
    AccountIcon: Icon(Icons.location_on_outlined),
  ),
  JayAccountModel(
    AccountOptions: 'Account Settings',
    AccountIcon: Icon(Icons.settings),
  ),
  JayAccountModel(
    AccountOptions: 'Logout',
    AccountIcon: Icon(Icons.logout),
  ),
];
