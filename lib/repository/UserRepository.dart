// ignore_for_file: body_might_complete_normally_nullable, unused_local_variable

import 'dart:convert';

import 'package:app/model/UserModel.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  static var client = http.Client();
  static Future<List<UserModel>?> fetchAllUsers() async {
    var response = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200) {
      var convertedJsonData = jsonDecode(response.body);
      return (convertedJsonData as List)
          .map((e) => UserModel.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }
}
