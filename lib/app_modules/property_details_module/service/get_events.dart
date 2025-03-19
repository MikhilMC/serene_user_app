import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:serene_user_app/app_constants/app_urls.dart';
import 'package:serene_user_app/app_modules/property_details_module/model/event_model.dart';

Future<List<EventModel>> getEvents({required int hostId}) async {
  try {
    Map<String, dynamic> params = {
      "id": hostId.toString(),
    };

    final url =
        Uri.parse(AppUrls.getEventsUrl).replace(queryParameters: params);

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      final response =
          decoded.map((item) => EventModel.fromJson(item)).toList();

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
