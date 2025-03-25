import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/payment_module/class/payment_details.dart';
import 'package:serene_user_app/app_modules/payment_module/model/payment_response_model.dart';

Future<PaymentResponseModel> makePayment({
  required PaymentDetails paymentDetails,
}) async {
  try {
    Map<String, dynamic> body = {
      "booking": paymentDetails.bookingId.toString(),
      "amount": paymentDetails.amount.toString(),
      "payment_method": paymentDetails.paymentMethod,
    };

    switch (paymentDetails.paymentMethod) {
      case "upi":
        body['upi_id'] = paymentDetails.upiId!;
        break;
      case "card":
        body['card_holder_name'] = paymentDetails.cardHolderName!;
        body['card_number'] = paymentDetails.cardNumber!;
        body['expiry_date'] = paymentDetails.expiryDate!;
        body['cvv'] = paymentDetails.cvv!;
        break;
      default:
    }

    final resp = await http.post(
      Uri.parse(AppUrls.makePaymentUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(resp.body);
      final PaymentResponseModel response =
          PaymentResponseModel.fromJson(decoded);
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        errorResponse['message'] ?? 'Unknown error',
      );
    }
  } on SocketException {
    throw Exception('No Internet connection');
  } on HttpException {
    throw Exception('Server error');
  } on FormatException {
    throw Exception('Bad response format');
  } catch (e) {
    throw Exception('Unexpected error: ${e.toString()}');
  }
}
