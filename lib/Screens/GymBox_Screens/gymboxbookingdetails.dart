import 'package:flutter/material.dart';
import 'package:flutter_application/modal/gymboxmodal.dart';

class GymboxBookingDetails extends StatelessWidget {
  const GymboxBookingDetails({super.key, required this.gymBookingList});

  final GymBoxModal gymBookingList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Booking Details')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gymBookingList.bookingPackage,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
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
                          'Status',
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
                          gymBookingList.bookingId,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Upcoming',
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
                          '${gymBookingList.bookingDate.day}/${gymBookingList.bookingDate.month}/${gymBookingList.bookingDate.year}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          gymBookingList.bookingTime,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
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
                          'There is a Cancellation Request',
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
        ],
      ),
    );
  }
}
