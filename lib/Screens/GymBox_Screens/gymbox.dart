import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/GymBox_Screens/filter.dart';
import 'package:flutter_application/Screens/GymBox_Screens/gymboxbookingdetails.dart';
import 'package:flutter_application/data/gymbox_dummy-data.dart';
import 'package:flutter_application/modal/gymboxmodal.dart';

class GymBox extends StatefulWidget {
  const GymBox({super.key});

  @override
  State<GymBox> createState() => _GymBoxState();
}

class _GymBoxState extends State<GymBox> {
  @override
  Widget build(BuildContext context) {
    int? _onSelectedCategory = 0;
    final GymBoxModal gymBookingList;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/Gymbox_Images/gymbox_logo.png',
          fit: BoxFit.fill,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                                : Colors.black,
                          ),
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
                    shaderCallback: (bounds) {
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
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => BookingCategoryFilter())),
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
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
            BookingCard(
              context,
              '#GYB9876',
              'Package Name title 1..',
              '23/04/23',
              '09.00 AM to 10.00 PM',
              () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GymboxBookingDetails(
                    bookingId: 'GYB9876',
                    bookingPackage: 'Package Name title 1..',
                    bookingDate: '23/04/23',
                    bookingTime: '09.00 AM to 10.00 PM',
                  ),
                ),
              ),
              showCancelButton: false,
            ),
            BookingCard(
              context,
              '#GYB9876',
              'Package Name title 1..',
              '23/04/23',
              '09.00 AM to 10.00 PM',
              () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GymboxBookingDetails(
                    bookingId: 'GYB9876',
                    bookingPackage: 'Package Name title 1..',
                    bookingDate: '23/04/23',
                    bookingTime: '09.00 AM to 10.00 PM',
                  ),
                ),
              ),
              showCancelButton: true,
            ),
            BookingCard(
              context,
              '#GYB9876',
              'Package Name title 1..',
              '23/04/23',
              '09.00 AM to 10.00 PM',
              () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GymboxBookingDetails(
                    bookingId: 'GYB9876',
                    bookingPackage: 'Package Name title 1..',
                    bookingDate: '23/04/23',
                    bookingTime: '09.00 AM to 10.00 PM',
                  ),
                ),
              ),
              showCancelButton: false,
            ),
          ],
        ),
      ),
    );
  }
}

Widget BookingCard(BuildContext context, String bId, bPackage, bDate, bTime,
    VoidCallback ontap,
    {bool showCancelButton = false}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: InkWell(
      onTap: ontap,
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
                    bId,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    bPackage,
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
                    bDate,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    bTime,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              if (showCancelButton)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(200, 255, 0, 0),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
            ],
          ),
        ),
      ),
    ),
  );
}
