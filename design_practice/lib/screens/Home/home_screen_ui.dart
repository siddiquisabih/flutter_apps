import 'package:design_practice/screens/Home/HomeContainers/all_home_containers.dart';
import 'package:design_practice/utils/app_colors.dart';
import 'package:design_practice/widgets/home_icon_circle_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.graySubTitle, AppColors.black_600],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavHeader(),
            SizedBox(height: 40),
            GreetAndNameWidget(),
            SizedBox(height: 20),
            HomeBoxesWidget(),
          ],
        ),
      ),
    ));
  }
}
