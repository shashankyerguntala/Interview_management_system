import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';

class CandidateCard extends StatelessWidget {
  final Map<String, dynamic> candidate;
  const CandidateCard({super.key, required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorConstants.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: ColorConstants.shadowColor,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: ColorConstants.borderColor),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: ColorConstants.primaryColor.withAlpha(1),
            child: Text(
              candidate['name']![0],
              style: TextStyle(
                color: ColorConstants.primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  candidate['name']!,
                  style: TextStyle(
                    color: ColorConstants.textPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  candidate['role']!,
                  style: TextStyle(
                    color: ColorConstants.textSecondaryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: ColorConstants.successColor.withAlpha(15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: ColorConstants.successColor,
                  size: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  "${candidate['score']}%",
                  style: TextStyle(
                    color: ColorConstants.successColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
