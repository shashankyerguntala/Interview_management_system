import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final IconData icon;

  const SectionHeader({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstants.primaryColor.withAlpha(50),
                ColorConstants.primaryColor.withAlpha(30),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: ColorConstants.primaryColor, size: 20),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: ColorConstants.textPrimaryColor,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
