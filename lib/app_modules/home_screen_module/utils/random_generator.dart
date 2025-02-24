import 'package:faker/faker.dart';
import 'dart:math';

import 'package:serene_user_app/app_modules/home_screen_module/models/booking.dart';

List<Booking> generateRandomBookingHistory(int count) {
  final random = Random();
  final faker = Faker();
  final now = DateTime.now();

  return List.generate(count, (index) {
    final startDate = now.add(Duration(days: random.nextInt(30)));
    final endDate = startDate.add(Duration(days: random.nextInt(10) + 1));

    return Booking(
      propertyName: faker.lorem.words(3).join(' '),
      imageUrl: 'https://picsum.photos/300/200?random=$index',
      startDate: startDate,
      endDate: endDate,
      bookingRate: 1000 + random.nextInt(5000).toDouble(),
      starRating: random.nextBool() ? random.nextInt(5) + 1 : null,
      review: random.nextBool() ? faker.lorem.sentence() : null,
    );
  });
}
