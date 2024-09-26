import 'package:flutter/material.dart';

class GymBox extends StatefulWidget {
  const GymBox({super.key});

  @override
  State<GymBox> createState() => _GymBoxState();
}

class _GymBoxState extends State<GymBox> {
  List<String> bookingCategory = [
    'Upcoming',
    'Ongoing',
    'Completed',
    'Cancelled',
  ];

  @override
  Widget build(BuildContext context) {
    int? _onSelectedCategory = 0;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Gymbox_Images/gymbox_logo.png',
          fit: BoxFit.fill,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          //~ Bookings Categories
          Container(
            height: 60,
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: bookingCategory.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _onSelectedCategory = i;
                      print('$_onSelectedCategory - $i');
                    });
                  },
                  child: Container(
                    width: 90,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    decoration: BoxDecoration(
                      color: _onSelectedCategory == i
                          ? Colors.black
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: Center(
                      child: Text(
                        bookingCategory[i],
                        style: TextStyle(
                            color: _onSelectedCategory == i
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          //~ Filter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              children: [
                Text(
                  '12 Bookings',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 160, 37, 249),
                        Color.fromARGB(255, 10, 163, 234),
                        Color.fromARGB(255, 0, 0, 255),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          //~Booking Card 1
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Booking ID',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Package',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '#GYB9876',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Package Name title 1..',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Time',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '#23/04/23',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '09.00 AM to 10.00 PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          //~ Booking Card 2
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Booking ID',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Package',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '#GYB9876',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Package Name title 1..',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Time',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '#23/04/23',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '09.00 AM to 10.00 PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(200, 255, 0, 0),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                'Cancellation Requested',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          //~ Booking Card 3
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Booking ID',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Package',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '#GYB9876',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Package Name title 1..',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Time',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '#23/04/23',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '09.00 AM to 10.00 PM',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
