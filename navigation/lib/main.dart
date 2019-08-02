import 'package:flutter/material.dart';

import './loginPage/login.dart';
import './signupPage/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
      routes: <String, WidgetBuilder>{
        "/signup": (BuildContext context) => new SignupPage(),
      },
    );
  }
}
