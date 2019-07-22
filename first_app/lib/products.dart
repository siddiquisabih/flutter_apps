import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> receiveProduct;

  Products(this.receiveProduct);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: receiveProduct
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/letter.jpg'),
                  Text(element),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
