import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/booking_details_module/model/booking_details_model.dart';

Future<BookingDetailsModel> getBookingDetails({required int bookingId}) async {
  try {
    Map<String, dynamic> params = {
      "id": bookingId.toString(),
    };

    final url = Uri.parse(AppUrls.getBookingDetailsUrl)
        .replace(queryParameters: params);

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final response = BookingDetailsModel.fromJson(decoded);

      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        '${errorResponse['message'] ?? 'Unknown error'}',
      );
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
