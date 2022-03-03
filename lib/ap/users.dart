import 'dart:convert';

import 'package:api/model/users.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<User>?> fetchUserData() async {
  var client = http.Client();
  var url = Uri.https('jsonplaceholder.typicode.com', 'users');
  var response = await client.get(url);
  debugPrint('Status Code ::: ${response.statusCode}');
  if (response.statusCode == 200) {

    var json = jsonDecode(response.body);
    var usersList = List.from(json).map((e) => User.fromJson(e)).toList();
    debugPrint('Response Type ::: ${usersList.runtimeType}');
    debugPrint('Response ::: $usersList');
    return usersList;
  } else {
    debugPrint('Status Code ::: ${response.statusCode}');
  }
}
