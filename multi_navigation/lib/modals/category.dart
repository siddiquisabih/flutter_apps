import 'package:flutter/material.dart';

class CategoryModal {
  final String id;
  final String title;
  final Color color;

  const CategoryModal(
      {required this.id, required this.title, this.color = Colors.orange});
}
