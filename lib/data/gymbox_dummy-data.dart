import 'package:flutter_application/modal/gymboxmodal.dart';

final List<String> bookingCategory = [
  'Upcoming',
  'Ongoing',
  'Completed',
  'Cancelled',
];

final List<GymBoxModal> gymBookingList = [
  GymBoxModal(
    bookingId: '#GYB9876',
    Package: 'Package Name title 1..',
    time: '09.00 AM to 10.00 PM',
    date: DateTime(2023, 04, 23),
  ),
  GymBoxModal(
    bookingId: '#GYB5482',
    Package: 'Package Name title 2..',
    time: '09.00 AM to 10.00 PM',
    date: DateTime(2023, 04, 07),
  ),
  GymBoxModal(
    bookingId: '#GYB1079',
    Package: 'Package Name title 3..',
    time: '09.00 AM to 10.00 PM',
    date: DateTime(2023, 04, 18),
  ),
];
