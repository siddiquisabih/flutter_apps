import 'package:flutter/material.dart';

class RenderText extends StatelessWidget {
  final String texts;
  RenderText(this.texts);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(texts),
    );
  }
}
