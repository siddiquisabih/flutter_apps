import 'package:design_practice/widgets/home_icon_circle_widget.dart';
import 'package:flutter/material.dart';

class NavHeader extends StatelessWidget {
  const NavHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HomeIconCircleWidget(icon: Icons.add),
        Row(children: [
          const HomeIconCircleWidget(icon: Icons.notifications_none),
          const SizedBox(width: 20),
          Container(
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Image.asset("assets/faltu/user.png"),
          ),
        ]),
      ],
    );
  }
}
