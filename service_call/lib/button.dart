import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  String buttonText = '';
  var pressButtonFunction;
  // ignore: invalid_required_positional_param
  ButtonCustom(@required this.buttonText, this.pressButtonFunction);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(buttonText),
      onPressed: pressButtonFunction,

    );
  }
}
