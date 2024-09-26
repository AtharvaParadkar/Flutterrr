import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Jay_Screens/jnewaddress.dart';

class JayShippingAddress extends StatelessWidget {
  const JayShippingAddress({
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addressess'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 0, 0),
                    Color.fromARGB(150, 255, 0, 0),
                    Color.fromARGB(255, 255, 0, 0),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => JayNewAddress())),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  'Add New Address',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 40),
            AddressWidget('Home', 'Salmiya',
                'Block 10, Building 11, FLoor 1, Apartment 3 Near Al Rashid Hospital'),
            SizedBox(height: 40),
            AddressWidget('Home', 'Salmiya',
                'Block 10, Building 11, FLoor 1, Apartment 3 Near Al Rashid Hospital'),
            Card(
              elevation: 10,
              child: Column(
                children: [
                  // Text(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget AddressWidget(String atype, name, add) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          atype,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Text(
          add,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: 10),
        Container(
          height: 40,
          width: 200,
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
              'Edit Address',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    ),
  );
}
