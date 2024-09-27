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
    bookingPackage: 'Package Name title 1..',
    bookingTime: '09.00 AM to 10.00 PM',
    bookingDate: DateTime(2023, 04, 23),
  ),
  GymBoxModal(
    bookingId: '#GYB5482',
    bookingPackage: 'Package Name title 2..',
    bookingTime: '09.00 AM to 10.00 PM',
    bookingDate: DateTime(2023, 04, 07),
  ),
  GymBoxModal(
    bookingId: '#GYB1079',
    bookingPackage: 'Package Name title 3..',
    bookingTime: '09.00 AM to 10.00 PM',
    bookingDate: DateTime(2023, 04, 18),
  ),
];
