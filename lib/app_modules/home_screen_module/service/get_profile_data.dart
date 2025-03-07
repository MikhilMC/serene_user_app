import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/home_screen_module/models/user_profile_model/user_profile_model.dart';

Future<UserProfileModel> getProfileData() async {
  try {
    int userId = 8;
    Map<String, dynamic> params = {
      "id": userId.toString(),
    };

    final url =
        Uri.parse(AppUrls.getProfileDataUrl).replace(queryParameters: params);

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final response = UserProfileModel.fromJson(decoded);

      if (kDebugMode) {
        print(response);
      }

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
