import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/register_module/class/user_registration_details.dart';
import 'package:serene_user_app/app_modules/register_module/model/user_register_respnse_model/user_register_response_model.dart';

Future<UserRegisterResponseModel> userRegister({
  required UserRegistrationDetails userRegistrationDetails,
}) async {
  try {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse(AppUrls.userRegisterUrl),
    );

    request.fields['username'] = userRegistrationDetails.username;
    request.fields['email'] = userRegistrationDetails.email;
    request.fields['password'] = userRegistrationDetails.password;
    request.fields['address'] = userRegistrationDetails.address;
    request.fields['phone_number'] = userRegistrationDetails.phoneNumber;
    request.fields['date_of_birth'] =
        "${userRegistrationDetails.dateOfBirth.year}-${userRegistrationDetails.dateOfBirth.month.toString().padLeft(2, '0')}-${userRegistrationDetails.dateOfBirth.day.toString().padLeft(2, '0')}";

    var imageStream =
        http.ByteStream(userRegistrationDetails.profilePicture.openRead());
    var imageLength = await userRegistrationDetails.profilePicture.length();
    var multipartFile = http.MultipartFile(
      'profile_picture',
      imageStream,
      imageLength,
      filename: userRegistrationDetails.profilePicture.path.split("/").last,
    );
    request.files.add(multipartFile);

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(responseBody);
      final UserRegisterResponseModel response =
          UserRegisterResponseModel.fromJson(decoded);
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
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
