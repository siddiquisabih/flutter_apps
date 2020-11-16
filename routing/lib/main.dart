import 'package:flutter/material.dart';
import 'secondScreen.dart';
import 'route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: routerNavigation,
      title: 'Routing',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //  home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is first Screen',
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/secondPage'),
            child: Text("Goto Second Page"),
          )
        ],
      )),
    );
  }
}
