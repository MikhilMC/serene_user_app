import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/property_model/property_model.dart';

Future<List<PropertyModel>> getPropertyList({
  required String place,
  required String propertyType,
}) async {
  try {
    Map<String, dynamic> params = {
      "location": place,
      "property_type": propertyType,
    };

    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.getPropertyListUrl).replace(
      queryParameters: params,
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      final response =
          decoded.map((item) => PropertyModel.fromJson(item)).toList();

      return response;
    } else {
      throw Exception('Failed to load response');
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
