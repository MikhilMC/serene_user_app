import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/booking_details_module/model/cancel_booking_response_model.dart';

Future<CancelBookingResponseModel> cancelBooking({
  required int bookingId,
}) async {
  try {
    Map<String, dynamic> body = {
      "id": bookingId.toString(),
    };

    final resp = await http.patch(
      Uri.parse(AppUrls.cancelBookingUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final CancelBookingResponseModel response =
          CancelBookingResponseModel.fromJson(decoded);
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
