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
    ItmeClass: 'Switches',
    ItemPrice: 90,
  ),
  Jaymodal(
    ItemImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROUHaWQjMj1MTvSgSln7j_HmbhslZK9aLQrA&s',
    ItemTitle: 'Handle Bar Switches',
    ItmeClass: 'Switches',
    ItemPrice: 900,
    BestSeller: true,
  ),
  Jaymodal(
    ItemImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzmO37evMptVmFuM607isuPwf4lSgwxuKHpg&s',
    ItemTitle: 'CND Switches',
    ItmeClass: 'Switches',
    ItemPrice: 600,
  ),
  Jaymodal(
    ItemImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvt4C1QuyGUIzrWvtIiWyJLKZGNC7BByM4Vw&s',
    ItemTitle: 'Motorcycle Ignition Switches',
    ItmeClass: 'Switches',
    ItemPrice: 1200,
  ),
  Jaymodal(
    ItemImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP41vK0SW0qeKY4DlLyO1OMdik6s40QZDx2w&s',
    ItemTitle: 'Electric Switch Button',
    ItmeClass: 'Switches',
    ItemPrice: 700,
  ),
  Jaymodal(
    ItemImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU5rMkqq1UQX5-cZhozt5IolO6g4FWw9DWgg&s',
    ItemTitle: 'Radio Switch',
    ItmeClass: 'Switches',
    ItemPrice: 200,
  ),
  Jaymodal(
    ItemImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwLiN9VKip9sd9jSVJ_kKWXtGfqxd0Bp-Dpg&s',
    ItemTitle: 'Door Lock',
    ItmeClass: 'Door Locks',
    ItemPrice: 250,
  ),
  Jaymodal(
    ItemImageUrl: 'https://rukminim2.flixcart.com/image/850/1000/krf91u80/lock/v/o/q/stainless-steel-cylindrical-latch-door-lock-with-3-simple-keys-original-imag57x37s9hwhh2.jpeg?q=90&crop=false',
    ItemTitle: 'Steel Cylindrical Latch Door Lock',
    ItmeClass: 'Door Locks',
    ItemPrice: 800,
  ),
  Jaymodal(
    ItemImageUrl: 'https://woodzon.com/wp-content/uploads/2022/10/WZSSIS007-1-jpg.webp',
    ItemTitle: 'SSikcon Door Lock Bolt',
    ItmeClass: 'Door Locks',
    ItemPrice: 1289,
  ),
  Jaymodal(
    ItemImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEf5wn0G3n8HPvSOxMaJ3HnDY8CfarAzgA4w&s',
    ItemTitle: 'Harrison Locks',
    ItmeClass: 'Door Locks',
    ItemPrice: 1979,
    BestSeller: true,
  ),
  Jaymodal(
    ItemImageUrl: 'https://decomart.in/cdn/shop/files/sliding-door-lock.jpg?v=1718119116&width=2048',
    ItemTitle: 'Ebco Slidong Door Lock',
    ItmeClass: 'Door Locks',
    ItemPrice: 800,
  ),
  Jaymodal(
    ItemImageUrl: 'https://d2hucwwplm5rxi.cloudfront.net/wp-content/uploads/2022/09/12111755/car-door-parts-_-Body-2-12-9-22-1024x640.jpg',
    ItemTitle: 'Car Door',
    ItmeClass: 'Car Door Locks',
    ItemPrice: 800,
  ),
  Jaymodal(
    ItemImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFXdvmPRoY7ML93iM5g1sQ0aB1XzqwIUkOBw&s',
    ItemTitle: 'Pull Type Door Lock',
    ItmeClass: 'Car Door Locks',
    ItemPrice: 15970,
  ),
  Jaymodal(
    ItemImageUrl: 'https://m.media-amazon.com/images/I/512fKJ6+c4L._AC_UF894,1000_QL80_.jpg',
    ItemTitle: 'Car Door Handle with Manual Lock ',
    ItmeClass: 'Car Door Locks',
    ItemPrice: 24841,
  ),
  Jaymodal(
    ItemImageUrl: 'https://www.huf-group.com/sites/default/files/styles/dd_page_content_width/public/images/2021-08/huf-flush-door-handle-rotatable-open-car-210617.jpg?itok=L4Pacacj',
    ItemTitle: 'Flush Car Door Handles',
    ItmeClass: 'Handles',
    ItemPrice: 1560,
    BestSeller: true,
  ),
  Jaymodal(
    ItemImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMjc_mBdMrY0e2jq_eeZRjDtE4WMSvQm-OEQ&s',
    ItemTitle: 'Falcon Car Door Handle',
    ItmeClass: 'Handles',
    ItemPrice: 6589,
  ),
  Jaymodal(
    ItemImageUrl: 'https://www.marquardt.com/fileadmin/user_upload/MAQ_S3_Slider_Magazin_Seite_2048x1408px.jpg',
    ItemTitle: 'Automotive Door Handle',
    ItmeClass: 'Handles',
    ItemPrice: 3560,
  ),
  Jaymodal(
    ItemImageUrl: 'https://www.huf-group.com/sites/default/files/styles/dd_page_content_width/public/news/images/huf-fixed-flush-door-handle-for-bmw-ix.jpg?itok=qfDaon8u',
    ItemTitle: 'BMW iX Flush Door Handle',
    ItmeClass: 'Handles',
    ItemPrice: 72000,
    BestSeller: true,
  ),
  Jaymodal(
    ItemImageUrl: 'https://rukminim2.flixcart.com/image/400/400/xif0q/car-cradle/clip/a/n/n/igrip-telescopic-one-touch-amkette-original-imagqhhn9guzgyzc.jpeg?q=90&crop=false',
    ItemTitle: 'Mobile Holder',
    ItmeClass: 'All',
    ItemPrice: 300,
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
