import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/taxi_booking_Screens/send_items.dart';
import 'package:gap/gap.dart';

class TaxiBookingCheckout extends StatefulWidget {
  TaxiBookingCheckout({super.key});

  @override
  State<TaxiBookingCheckout> createState() => _TaxiBookingCheckoutState();
}

class _TaxiBookingCheckoutState extends State<TaxiBookingCheckout> {
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _promoCodeController = TextEditingController();
  String? _paymentMethod;

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
          style: IconButton.styleFrom(
            iconSize: 20,
            fixedSize: Size(15, 15),
            backgroundColor: Color.fromARGB(255, 0, 0, 255),
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
                          child: Image.asset('assets/taxi/sedan.png',
                              fit: BoxFit.fitWidth, width: 70),
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
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Gap(15),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 250, 250),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.my_location,
                            color: Color.fromARGB(255, 136, 150, 247),
                          ),
                          Text('|'),
                          Text('|'),
                          Text('|'),
                          Text('|'),
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 136, 150, 247),
                          ),
                          Text('|'),
                          Text('|'),
                          Text('|'),
                          Text('|'),
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 136, 150, 247),
                          ),
                          Text('|'),
                          Text('|'),
                          Text('|'),
                          Text('|'),
                        ],
                      ),
                      Gap(10),
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (_)=>SendItems())),
                          child: Column(
                            children: [
                              LocationTile(
                                "Pickup Location",
                                "PLot no 20\nStreet 1\nPune",
                                () {},
                                false,
                              ),
                              LocationTile(
                                "Drop Location",
                                "PLot no 25\nStreet 2\nPune",
                                () {},
                                false,
                              ),
                              LocationTile(
                                "Drop Location 2",
                                "PLot no 5\nStreet 3\nPune",
                                () {},
                                true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15),
              Text(
                'Note {Optional}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Gap(15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 250, 250),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _noteController,
                  decoration: InputDecoration(
                    hintText: 'Please Enter Here',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(15),
              Text(
                'Promo Code',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Gap(15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 250, 250),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _promoCodeController,
                        decoration: InputDecoration(
                          hintText: 'Enter Code Here',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          color: Color.fromARGB(255, 136, 150, 247),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(15),
              Text(
                'Payment Method',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Gap(15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(255, 250, 250, 250),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    paymentMethods('KNET', 'assets/taxi/knet.png'),
                    paymentMethods('VISA', 'assets/taxi/visa.png'),
                    paymentMethods('MASTERCARD', 'assets/taxi/mastercard.jpg'),
                    paymentMethods('Cash', 'assets/taxi/cash.png'),
                    paymentMethods('Wallet', 'assets/taxi/wallet.png'),
                    paymentMethods('Apple Pay', 'assets/taxi/applepay.png'),
                  ],
                ),
              ),
              Gap(15),
              Text(
                'Payment Details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Gap(10),
              paymentDetails('Sub Total', '20.000 KD'),
              paymentDetails('Discount', '0.000 KD'),
              paymentDetails('Paid by Wallet', '-20.000 KD'),
              paymentDetails('Total', '0.000 KD'),
              Gap(15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 136, 150, 247),
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 20),
                  elevation: 10,
                ),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget LocationTile(
      String locationType, String address, VoidCallback onEdit, bool isDelete) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              locationType,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Spacer(),
            if (isDelete)
              IconButton(
                  onPressed: onEdit,
                  icon: Icon(
                    Icons.delete_outline_outlined,
                    color: const Color.fromARGB(255, 243, 100, 90),
                    size: 20,
                  )),
            IconButton(
                onPressed: onEdit,
                icon: Icon(
                  Icons.edit,
                  size: 20,
                )),
          ],
        ),
        Text(
          address,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget paymentMethods(String payName, String payImage) {
    return Row(
      children: [
        Radio(
          value: payName,
          groupValue: _paymentMethod,
          onChanged: (String? value) {
            setState(() {
              _paymentMethod = value;
            });
          },
        ),
        Text(payName),
        Spacer(),
        Image.asset(
          payImage,
          height: 40,
          width: 40,
        ),
        Gap(5),
      ],
    );
  }

  Widget paymentDetails(String payDetail, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Text(
            payDetail,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Spacer(),
          Text(
            amount,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
