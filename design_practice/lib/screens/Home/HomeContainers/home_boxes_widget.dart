import 'package:design_practice/screens/Home/HomeContainers/all_home_containers.dart';
import 'package:flutter/material.dart';

class HomeBoxesWidget extends StatelessWidget {
  const HomeBoxesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DashboardBoxWidget(
              percentage: "+20.50",
              title: "Balance",
              value: "\$800.65",
              iconColor: Colors.black,
              iconBg: Colors.white,
              cardBg: Colors.black),
          SizedBox(width: 10),
          DashboardBoxWidget(
              percentage: "+20.50", title: "Income", value: "\$800.65"),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DashboardBoxWidget(
              percentage: "+20.50",
              title: "Expense",
              value: "\$800.65",
              percentColor: Colors.red),
          SizedBox(width: 10),
          DashboardAddNewWidget(),
        ],
      )
    ]);
  }
}
