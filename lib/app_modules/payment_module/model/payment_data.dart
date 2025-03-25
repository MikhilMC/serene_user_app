// To parse this JSON data, do
//
//     final paymentData = paymentDataFromJson(jsonString);

import 'dart:convert';

PaymentData paymentDataFromJson(String str) =>
    PaymentData.fromJson(json.decode(str));

String paymentDataToJson(PaymentData data) => json.encode(data.toJson());

class PaymentData {
  int id;
  String expiryDate;
  String cardHolderName;
  String cardNumber;
  String cvv;
  String upiId;
  String amount;
  String paymentMethod;
  int booking;

  PaymentData({
    required this.id,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cardNumber,
    required this.cvv,
    required this.upiId,
    required this.amount,
    required this.paymentMethod,
    required this.booking,
  });

  factory PaymentData.fromJson(Map<String, dynamic> json) => PaymentData(
        id: json["id"],
        expiryDate: json["expiry_date"],
        cardHolderName: json["card_holder_name"],
        cardNumber: json["card_number"],
        cvv: json["cvv"],
        upiId: json["upi_id"],
        amount: json["amount"],
        paymentMethod: json["payment_method"],
        booking: json["booking"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "expiry_date": expiryDate,
        "card_holder_name": cardHolderName,
        "card_number": cardNumber,
        "cvv": cvv,
        "upi_id": upiId,
        "amount": amount,
        "payment_method": paymentMethod,
        "booking": booking,
      };
}
