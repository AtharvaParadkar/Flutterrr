import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/qrcodescanner.dart';
import 'package:gap/gap.dart';

class JayRewardsPage extends StatefulWidget {
  const JayRewardsPage({super.key});

  @override
  State<JayRewardsPage> createState() => _JayRewardsPageState();
}

class _JayRewardsPageState extends State<JayRewardsPage> {
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 130,
              width: MediaQuery.sizeOf(context).width,
              child: Card(
                elevation: 25,
                shadowColor: Color.fromARGB(183, 255, 0, 0),
                color: Color.fromARGB(255, 255, 0, 0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rewards Obtained',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Gap(5),
                      Text(
                        '150 🟡 Obtained',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Center(
          //   child: SizedBox(
          //     height: 250,
          //     width: 290,
          //     child: Card(
          //       elevation: 25,
          //       shadowColor: Color.fromARGB(183, 255, 0, 0),
          //       color: Color.fromARGB(255, 255, 0, 0),
          //       child: Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'Rewards',
          //               style: TextStyle(color: Colors.white, fontSize: 22),
          //             ),
          //             Text(
          //               'Scan QR for Rewards 👇',
          //               style: TextStyle(color: Colors.white, fontSize: 14),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Gap(160),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => QRCodeScanner())),
            child: Icon(
              Icons.qr_code_scanner,size: 140,
              color: Color.fromARGB(255, 0, 255, 0),
            ),
          ),
        ],
      ),
    );
  }
}
