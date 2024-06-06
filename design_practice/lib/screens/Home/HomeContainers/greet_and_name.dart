import 'package:flutter/material.dart';

class GreetAndNameWidget extends StatelessWidget {
  const GreetAndNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Good Morning',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16)),
        Text('Sabih Siddiqui',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22))
      ],
    );
  }
}
