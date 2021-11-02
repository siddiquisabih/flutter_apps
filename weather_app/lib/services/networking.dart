import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkServices {
  final String uri;

  const NetworkServices({required this.uri});

  Future getData() async {
    var url = Uri.parse(uri);
    http.Response res = await http.get(url);
    // ignore: avoid_print
    if (res.statusCode == 200) {
      String data = res.body;
      return jsonDecode(data);
    } else {
      // ignore: avoid_print
      print(res.statusCode);
    }
  }
}
