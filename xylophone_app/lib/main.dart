import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int fileName) {
    final player = AudioCache();
    player.play('note$fileName.wav');
  }

  Expanded soundKey(int soundNumber, Color colorName) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorName,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(
          '',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundKey(1, Colors.red),
              soundKey(2, Colors.orange),
              soundKey(3, Colors.yellow),
              soundKey(4, Colors.green),
              soundKey(5, Colors.teal),
              soundKey(6, Colors.blue),
              soundKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
