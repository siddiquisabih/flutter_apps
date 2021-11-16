import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? buttonEvent;
  final String title;
  final Color color;

  const AppButton(
      {Key? key, this.buttonEvent, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: buttonEvent,
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
