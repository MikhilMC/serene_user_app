import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_models/property_action_response_model/property_action_response_model.dart';
import 'package:serene_user_app/app_modules/booking_review_module/class/review_details.dart';
import 'package:serene_user_app/app_utils/app_local_storage.dart';

Future<PropertyActionResponseModel> submitReview({
  required ReviewDetails reviewDetails,
}) async {
  try {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse(AppUrls.submitReviewUrl),
    );

    final int userId = await AppLocalStorage.getUserId();
    request.fields['user'] = userId.toString();
    request.fields['booking'] = reviewDetails.boookingId.toString();
    request.fields['star_rating'] = reviewDetails.starRating.toString();
    if (reviewDetails.feedback != null) {
      request.fields['feedback'] = reviewDetails.feedback!;
    }

    if (reviewDetails.images != null) {
      for (var image in reviewDetails.images!) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'images',
            image.path,
          ),
        );
      }
    }

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(responseBody);
      final PropertyActionResponseModel response =
          PropertyActionResponseModel.fromJson(decoded);
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
