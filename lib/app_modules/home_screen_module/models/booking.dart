class Booking {
  final String propertyName;
  final String imageUrl;
  final DateTime startDate;
  final DateTime endDate;
  final double bookingRate;
  final double? starRating; // Optional
  final String? review; // Optional

  Booking({
    required this.propertyName,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.bookingRate,
    this.starRating,
    this.review,
  });
}
