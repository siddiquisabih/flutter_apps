import 'package:flutter/material.dart';
import '../dummy.dart';
import '../widgets/category_items.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Screen"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0),
        children: DUMMY_DART
            .map((categoryData) => CategoryItems(
                  color: categoryData.color,
                  title: categoryData.title,
                  id: categoryData.id,
                ))
            .toList(),
      ),
    );
  }
}
