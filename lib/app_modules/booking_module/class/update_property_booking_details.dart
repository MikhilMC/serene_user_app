// ignore_for_file: public_member_api_docs, sort_constructors_first
class UpdatePropertyBookingDetails {
  final int bookingId;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? numberOfGuests;
  final double totalCost;
  final double? platformFee;
  final double? refundAmount;
  UpdatePropertyBookingDetails({
    required this.bookingId,
    this.startDate,
    this.endDate,
    this.numberOfGuests,
    required this.totalCost,
    this.platformFee,
    this.refundAmount,
  });
}
