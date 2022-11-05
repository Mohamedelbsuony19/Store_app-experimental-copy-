import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class apimanager {
  Future<dynamic> get(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode ==200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there is error in ststusCode${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'here error in state code look ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> Put(
      {required String url,
      required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'here error in state code look ${jsonDecode(response.body)}');
    }
  }
}
