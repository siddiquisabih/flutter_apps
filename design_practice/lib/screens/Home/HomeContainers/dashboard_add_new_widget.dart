import 'package:design_practice/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DashboardAddNewWidget extends StatelessWidget {
  const DashboardAddNewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(4),
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: AppColors.grey_900,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white12)),
                  child: const Icon(Icons.add, size: 30, color: Colors.white),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: const Text("Add Widget",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)))
          ],
        ),
      ),
    );
  }
}
