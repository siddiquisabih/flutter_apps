import 'dart:convert';

import 'package:flutter/material.dart';
import 'button.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String buttonText = 'Load Data';
  final String api = 'http://dummy.restapiexample.com/api/v1/employees';

  void pressButton() async {
    print("sabih siddiqui ");
    fetchData();
  }

  Future<List<dynamic>> fetchData() async {
    var data = await http.get(api);
    var result = json.decode(data.body)['data'];
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Call',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Service Call'),
        ),
        body: Container(
          child: FutureBuilder(
              future: fetchData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data[0]);
                  return Container(
                      child: ListView.builder(
                          padding: EdgeInsets.all(8),
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                                child: Text(
                                    snapshot.data[index]["employee_name"]));
                          }));
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // width: 100,
        ),
      ),
    );
  }
}
