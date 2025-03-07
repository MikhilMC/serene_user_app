import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:serene_user_app/app_constants/app_urls.dart';

import 'package:serene_user_app/app_modules/login_module/class/login_details.dart';
import 'package:serene_user_app/app_modules/login_module/model/login_response_model/login_response_model.dart';

Future<LoginResponseModel> userLogin({
  required LoginDetails loginDetails,
}) async {
  try {
    Map<String, dynamic> params = {
      "email": loginDetails.email,
      "password": loginDetails.password,
    };

    final resp = await http.post(
      Uri.parse(AppUrls.userLoginUrl),
      body: jsonEncode(params),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final LoginResponseModel response = LoginResponseModel.fromJson(decoded);
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
