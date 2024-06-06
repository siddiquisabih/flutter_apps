import 'package:design_practice/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeIconCircleWidget extends StatelessWidget {
  final IconData icon;
  const HomeIconCircleWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: AppColors.grey_600),
      child: Icon(icon, size: 25, color: Colors.white),
    );
  }
}
