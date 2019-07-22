import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProducts;
  ProductManager(this.startingProducts);

  @override
  State<StatefulWidget> createState() {
    return _ProductMagerState();
  }
}

class _ProductMagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProducts);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('new food');
              });
            },
            child: Text('product'),
          ),
        ),
        Products(_products),
      ],
    );
  }
}
