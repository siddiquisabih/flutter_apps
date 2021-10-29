import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;

  const BottomButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bottomContainerColor,
      height: bottomContainerHeight,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
