import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconName;
  final VoidCallback buttonEvent;
  const RoundIconButton(
      {Key? key, required this.iconName, required this.buttonEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonEvent,
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      child: Icon(iconName, color: Colors.white),
    );
  }
}
