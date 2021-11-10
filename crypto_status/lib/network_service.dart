import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkService {
  final String api;

  NetworkService({required this.api});

 

  Future getData() async {
    var url = Uri.parse(api);
    http.Response detail = await http.get(url);
    if (detail.statusCode == 200) {
      String response = detail.body;
      return jsonDecode(response);
    } else {
      // ignore: avoid_print
      print(detail.statusCode);
    }
  }
}
