import 'package:flutter/material.dart';
import '../constants.dart';

class InputField extends StatelessWidget {
  final Function onChange;
  final String hintText;
  final bool isSecureText;
  final TextInputType? keyboardType;

  const InputField({
    required this.hintText,
    this.isSecureText = false,
    required this.onChange,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black54),
      obscureText: isSecureText,
      onChanged: (value) => onChange(value),
      decoration: kInputFieldDecoration.copyWith(hintText: hintText),
    );
  }
}
