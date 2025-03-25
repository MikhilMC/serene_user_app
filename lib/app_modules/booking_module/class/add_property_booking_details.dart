// ignore_for_file: public_member_api_docs, sort_constructors_first
class AddPropertyBookingDetails {
  final int propertyId;
  final DateTime startDate;
  final DateTime endDate;
  final int numberOfGuests;
  final double totalCost;
  final double platformFee;
  AddPropertyBookingDetails({
    required this.propertyId,
    required this.startDate,
    required this.endDate,
    required this.numberOfGuests,
    required this.totalCost,
    required this.platformFee,
  });
}
