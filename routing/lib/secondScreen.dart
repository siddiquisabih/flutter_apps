import 'package:flutter/material.dart';

void main() {
  runApp(SecondPage());
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Second Screen',
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Go Back"),
            )
          ],
        )),
      ),
    );
  }
}
