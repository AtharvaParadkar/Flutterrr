import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TaxiBookingCheckout extends StatelessWidget {
  const TaxiBookingCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 112, 112, 247),
          ),
          style: ButtonStyle(
            iconSize: WidgetStatePropertyAll(15),
            minimumSize: WidgetStatePropertyAll(Size(15, 15)),
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 0, 0, 255)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 150, 247),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 34, 144, 242),
                    width: 7.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 70,
                          child: Image.asset(
                              'assets/taxibooking_Images/sedan.png',
                              fit: BoxFit.fitWidth,
                              width: 70),
                        ),
                      ],
                    ),
                    Text(
                      'Sedan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(10),
                    Text(
                      '----',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Gap(10),
                    Text(
                      'Date: 10/10/2023',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Gap(10),
                    Row(
                      children: [
                        Text(
                          'Pickup TIme: 09.00 AM TO 09.30 AM',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Spacer(),
                        Container(
                          height: 27,
                          width: 27,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            iconSize: 17,
                            color: Color.fromARGB(255, 136, 150, 247),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(20),
              Text(
                'Pickup & Drop Location',
                style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
