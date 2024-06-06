import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final IconData icon;
  const ProfileImageWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: Image.asset("assets/faltu/user.png"),
    );
  }
}
