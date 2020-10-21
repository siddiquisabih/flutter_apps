import 'package:flutter/material.dart';

import './textManager.dart';

void main() => runApp(MyApplication());

class MyApplication extends StatelessWidget {
  

   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
        ),
        body: Column(
          children: <Widget>[
           
           
           TextManager('first Message')
          ],
        ),
      ),
    );
  }
}
