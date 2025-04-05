import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/booking_module/class/add_property_booking_details.dart';
import 'package:serene_user_app/app_modules/booking_module/model/property_booking_response_model.dart';
import 'package:serene_user_app/app_utils/app_local_storage.dart';

Future<PropertyBookingResponseModel> addPropertyBooking({
  required AddPropertyBookingDetails bookingDetails,
}) async {
  try {
    int userId = await AppLocalStorage.getUserId();
    Map<String, dynamic> body = {
      "host": bookingDetails.propertyId.toString(),
      "user": userId.toString(),
      "start_date":
          "${bookingDetails.startDate.year}-${bookingDetails.startDate.month.toString().padLeft(2, '0')}-${bookingDetails.startDate.day.toString().padLeft(2, '0')}",
      "end_date":
          "${bookingDetails.endDate.year}-${bookingDetails.endDate.month.toString().padLeft(2, '0')}-${bookingDetails.endDate.day.toString().padLeft(2, '0')}",
      "no_of_guests": bookingDetails.numberOfGuests.toString(),
      "total_cost": bookingDetails.totalCost.toString(),
      "platform_fee": bookingDetails.platformFee.toString(),
    };

    final resp = await http.post(
      Uri.parse(AppUrls.addBookingUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(resp.body);
      final PropertyBookingResponseModel response =
          PropertyBookingResponseModel.fromJson(decoded);
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
