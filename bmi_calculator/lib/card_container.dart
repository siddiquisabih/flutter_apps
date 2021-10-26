import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Color backgroundColor;
  final Widget? cardChild;

  const CardContainer({Key? key, required this.backgroundColor, this.cardChild})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // color: Colors.red,
        color: backgroundColor,

        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
