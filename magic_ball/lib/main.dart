import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  // const MagicBall({ Key? key }) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNumber = 1;

  void changeImage() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Image.asset("images/ball$imageNumber.png"),
                onPressed: changeImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
