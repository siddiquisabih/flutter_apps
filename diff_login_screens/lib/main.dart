import 'package:diff_login_screens/first_login_screen.dart';
import 'package:diff_login_screens/homePage.dart';
import 'package:diff_login_screens/second_login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/firstlogin': (context) => FirstLoginScreen(),
        '/secondlogin': (context) => SecondLoginScreen(),
      },
    );
  }
}
