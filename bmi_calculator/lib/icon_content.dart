import 'package:flutter/material.dart';
import 'constants.dart';

 
class IconAndText extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  const IconAndText({
    Key? key,
    required this.cardIcon,
    required this.cardText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: lableStyle,
        ),
      ],
    );
  }
}
