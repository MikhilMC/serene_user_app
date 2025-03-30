import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_models/property_action_response_model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/booking_module/class/update_property_booking_details.dart';

Future<PropertyActionResponseModel> updateBooking({
  required UpdatePropertyBookingDetails bookingDetails,
}) async {
  try {
    Map<String, dynamic> body = {
      "id": bookingDetails.bookingId.toString(),
      "total_cost": bookingDetails.totalCost.toString(),
    };

    if (bookingDetails.startDate != null) {
      body['start_date'] =
          "${bookingDetails.startDate!.year}-${bookingDetails.startDate!.month.toString().padLeft(2, '0')}-${bookingDetails.startDate!.day.toString().padLeft(2, '0')}";
    }

    if (bookingDetails.endDate != null) {
      body['end_date'] =
          "${bookingDetails.endDate!.year}-${bookingDetails.endDate!.month.toString().padLeft(2, '0')}-${bookingDetails.endDate!.day.toString().padLeft(2, '0')}";
    }

    if (bookingDetails.numberOfGuests != null) {
      body['no_of_guests'] = bookingDetails.numberOfGuests.toString();
    }

    if (bookingDetails.platformFee != null) {
      body['platform_fee'] = bookingDetails.platformFee.toString();
    }

    if (bookingDetails.refundAmount != null) {
      body['refund_amount'] = bookingDetails.refundAmount.toString();
    }

    final resp = await http.patch(
      Uri.parse(AppUrls.updateBookingUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final PropertyActionResponseModel response =
          PropertyActionResponseModel.fromJson(decoded);
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
