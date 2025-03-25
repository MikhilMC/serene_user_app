// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaymentDetails {
  final int bookingId;
  final double amount;
  final String paymentMethod;
  final String? upiId;
  final String? cardHolderName;
  final String? cardNumber;
  final String? expiryDate;
  final String? cvv;
  PaymentDetails({
    required this.bookingId,
    required this.amount,
    required this.paymentMethod,
    this.upiId,
    this.cardHolderName,
    this.cardNumber,
    this.expiryDate,
    this.cvv,
  });
}
