import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude = 0;
  double longitude = 0;

  void getLocation() async {
    LocationServices location = LocationServices();

    await location.getCurrentLocation();

    longitude = location.longitude;
    latitude = location.latitude;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getData() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$longitude&lon=$latitude&apikey=b8d15b81f774b5ccd27cfe7f75303193');

    http.Response res = await http.get(url);
    // ignore: avoid_print
    if (res.statusCode == 200) {
      String data = res.body;
      var decode = jsonDecode(data);

      double temperature = decode['main']['temp'];
      int condition = decode['weather'][0]['id'];
      String cityName = decode['name'];

      // ignore: avoid_print
      print(temperature);
      print(condition);
      print(cityName);
    } else {
      // ignore: avoid_print
      print(res.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: getData,
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
