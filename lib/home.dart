// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/animation/pagerouteanimation.dart';
import 'package:flutter_application/gymui.dart';
import 'package:flutter_application/widgets/animation/animation.dart';
import 'package:flutter_application/widgets/appbar.dart';
import 'package:flutter_application/widgets/checkbox.dart';
import 'package:flutter_application/widgets/drawer.dart';
import 'package:flutter_application/widgets/grid.dart';
import 'package:flutter_application/widgets/list.dart';
import 'package:flutter_application/widgets/listview.dart';
import 'package:flutter_application/widgets/progressbar.dart';
import 'package:flutter_application/widgets/radio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void _navigation(BuildContext context, Widget navpage) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => navpage),
  // );
  Navigator.push(context, _pageRoute(navpage));
}


class _MyHomePageState extends State<MyHomePage> {
  void toastfunction() {
    Fluttertoast.showToast(
      msg: 'TOAST!',
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.black,
      fontSize: 20,
      toastLength: Toast.LENGTH_LONG,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Flutterrr'),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          listtilewidget(
            context,
            'List',
            'List View',
            () => _navigation(context, ListViewWidget()),
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'Grid',
            'Grid View',
            () => _navigation(context, const GridViewWidget()),
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'Toast',
            'Press for Toast',
            toastfunction,
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'ListView',
            'List View using Modal Class',
            () => _navigation(context, const ListviewModal()),
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'GymUI',
            'Gym checkout ui',
            () => _navigation(context, const GymUI()),
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'Checkbox',
            'Checkbox Button',
            () => _navigation(context, const CheckboxButton()),
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'Radio',
            'Radio Button',
            () => _navigation(context, const RadioButton()),
          ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'Animation',
            'Animation Widgets',
            () => _navigation(context, const AnimationWidget()),
          ),
          // const SizedBox(height: 10),
          // listtilewidget(
          //   context,
          //   'Page Animation',
          //   'Page Route Animation ',
          //   () => _navigation(context, const PageRouteAnimation()),
          // ),
          const SizedBox(height: 10),
          listtilewidget(
            context,
            'Progress Bar',
            'Progress Bar Indicator',
            () => _navigation(context, const ProgressBar()),
          ),
          // const SizedBox(height: 10),
          // listtilewidget(
          //   context,
          //   'Drawer',
          //   'Drawer',
          //   () => _navigation(context, const MyDrawer()),
          // ),
        ],
      ),
    );
  }
}

Route _pageRoute(Widget anipage) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => anipage,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begins = Offset(0.0, 1.0);
      const ends = Offset.zero;
      const curves = Curves.fastOutSlowIn;
      var tweens =
          Tween(begin: begins, end: ends).chain(CurveTween(curve: curves));
      return SlideTransition(
        position: animation.drive(tweens),
        child: child,
      );
    },
  );
}

Widget listtilewidget(
    BuildContext context, String text, String subtext, VoidCallback ontap) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 60,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 255),
              Color.fromARGB(130, 0, 0, 255),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListTile(
          title: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            subtext,
            style: const TextStyle(fontSize: 15),
          ),
          textColor: Colors.white,
          // tileColor: const Color.fromARGB(255, 0, 0, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onTap: ontap,
        ),
      ),
    ),
  );
}
