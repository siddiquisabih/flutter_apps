import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List _product = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.orange,
        ),
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              title: Text(
                "Todo Application",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/bg.jpg',
                        fit: BoxFit.fill,
                      ),
                      height: 200.0,
                      width: double.infinity,
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Wrap(
                            spacing: 8.0, // gap between adjacent chips
                            runSpacing: 4.0, // gap between lines
                            direction:Axis.horizontal, // main axis (rows or columns)
                            children: <Widget>[
                              Text(
                                'Name : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.deepOrange),
                              ),
                              Text(
                                'this is name',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 8.0, // gap between adjacent chips
                            runSpacing: 4.0, // gap between lines
                            direction:Axis.horizontal, // main axis (rows or columns)
                            children: <Widget>[
                              Text(
                                'Title : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.deepOrange),
                              ),
                              Text(
                                'this is some title',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 8.0, // gap between adjacent chips
                            runSpacing: 4.0, // gap between lines
                            direction:Axis.horizontal, // main axis (rows or columns)
                            children: <Widget>[
                              Text(
                                'Description : ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.deepOrange),
                              ),
                              Text(
                                'this is some description and ha he ho him',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  _submit() async {
    // _product.add('asd');
    // print(_product);
    // var url =
    //     'https://newsapi.org/v2/everything?q=bitcoin&from=2019-06-30&sortBy=publishedAt&apiKey=cfc0aa1be0184c968472aa1c070d7be5';

    // final response = await http.get(url);
    // print(response);
    // if(response.statusCode == 200 ){
    //   print('record found');
    // }
    // else{
    //   print('no record found ');
    // }
  }
}
//  cfc0aa1be0184c968472aa1c070d7be5
