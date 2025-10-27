import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/presentation/features/interviewer/widgets/interview_detail_sheet.dart';

class InterviewCard extends StatelessWidget {
  final Map<String, String> interview;

  const InterviewCard({super.key, required this.interview});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: ColorConstants.surfaceColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) => InterviewDetailSheet(interview: interview),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorConstants.surfaceColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorConstants.borderColor),
          boxShadow: [
            BoxShadow(
              color: ColorConstants.shadowColor.withAlpha(10),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: ColorConstants.primaryColor.withAlpha(10),
              child: Text(
                interview['candidateName']![0],
                style: TextStyle(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    interview['candidateName']!,
                    style: TextStyle(
                      color: ColorConstants.textPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    interview['role']!,
                    style: TextStyle(
                      color: ColorConstants.textSecondaryColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              interview['time']!,
              style: TextStyle(
                color: ColorConstants.textSecondaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
