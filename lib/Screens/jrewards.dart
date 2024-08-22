import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/qrcodescanner.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Card(
                elevation: 15,
                shadowColor: Color.fromARGB(183, 255, 0, 0),
                color: Color.fromARGB(255, 255, 0, 0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rewards',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        'Scan QR for Rewards 👇',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => QRCodeScanner())),
            child: Icon(
              Icons.qr_code_scanner,
              size: 50,
              color: Color.fromARGB(255, 0, 255, 0),
            ),
          ),
        ],
      ),
    );
  }
}
