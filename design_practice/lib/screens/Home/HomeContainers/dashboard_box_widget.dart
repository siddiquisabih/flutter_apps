import 'package:design_practice/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DashboardBoxWidget extends StatelessWidget {
  final String value;
  final String percentage;
  final String title;
  final Color iconBg;
  final Color iconColor;
  final Color cardBg;
  final Color percentColor;

  const DashboardBoxWidget({
    super.key,
    required this.value,
    required this.percentage,
    required this.title,
    this.cardBg = AppColors.grey_900,
    this.iconBg = AppColors.grayIconBg,
    this.iconColor = Colors.white,
    this.percentColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(4),
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: cardBg,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Text(value,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400))),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        percentage,
                        style: TextStyle(
                            color: percentColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), color: iconBg),
                  child: Icon(Icons.arrow_outward, size: 20, color: iconColor),
                )
              ],
            ),
            Container(
                padding: const EdgeInsets.only(bottom: 10, left: 10),
                child: Text(title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)))
          ],
        ),
      ),
    );
  }
}
