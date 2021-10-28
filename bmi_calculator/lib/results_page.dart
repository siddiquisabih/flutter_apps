import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULTOR'),
      ),
      body: Text('Hello second screen'),

    );
  }
}