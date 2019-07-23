import 'package:flutter/material.dart';
import './textView.dart';

class TextManager extends StatefulWidget {
  final String printText;

  // constructor
  TextManager(this.printText);
  @override
  State<StatefulWidget> createState() {
    return _TextStateManage();
  }
}

class _TextStateManage extends State<TextManager> {
  String text = '';

  @override
  void initState() {
    text = widget.printText;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              text = 'text changed';
            });
          },
          child: Text('change Text'),
        ),
        RenderText(text),
      ],
    );
  }
}
