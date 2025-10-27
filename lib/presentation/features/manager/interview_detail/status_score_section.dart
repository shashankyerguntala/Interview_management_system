import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/helper_functions.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';

class StatusScoreSection extends StatelessWidget {
  final InterviewEntity interview;

  const StatusScoreSection({required this.interview, super.key});

  @override
  Widget build(BuildContext context) {
    final statusColor =
        HelperFunctions.getStatusColor(interview.interviewStatus);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: statusColor.withAlpha(10),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: statusColor.withAlpha(30)),
          ),
          child: Row(
            children: [
              Icon(Icons.check_circle_outline, color: statusColor, size: 24),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Status",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey[700])),
                  const SizedBox(height: 2),
                  Text(
                    interview.interviewStatus,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: statusColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstants.gradientEnd.withAlpha(10),
                ColorConstants.gradientEnd.withAlpha(5),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
            border:
                Border.all(color: ColorConstants.gradientEnd.withAlpha(30)),
          ),
          child: Row(
            children: [
              Icon(Icons.star_rounded,
                  color: ColorConstants.gradientEnd, size: 24),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Score",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey[700])),
                  const SizedBox(height: 2),
                  Text(
                    "${interview.score.toStringAsFixed(1)} / 10.0",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.gradientEnd,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
