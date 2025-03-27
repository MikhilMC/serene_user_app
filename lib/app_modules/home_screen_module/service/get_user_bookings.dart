import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/user_booking_model/user_booking_model.dart';

Future<List<UserBookingModel>> getUserBookings() async {
  try {
    int userId = 8;
    Map<String, dynamic> params = {
      "id": userId.toString(),
    };

    final url =
        Uri.parse(AppUrls.getUserBookingsUrl).replace(queryParameters: params);

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      final response =
          decoded.map((item) => UserBookingModel.fromJson(item)).toList();

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
