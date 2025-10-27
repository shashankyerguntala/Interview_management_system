import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/presentation/features/interviewer/widgets/detail_row.dart';

class InterviewDetailSheet extends StatelessWidget {
  final Map<String, String> interview;

  const InterviewDetailSheet({super.key, required this.interview});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 4,
                width: 40,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: ColorConstants.borderColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text(
              interview['candidateName']!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorConstants.textPrimaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              interview['role']!,
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.textSecondaryColor,
              ),
            ),
            const Divider(height: 30),
            DetailRow(title: "Email", value: interview['candidateEmail']!),
            DetailRow(title: "Interview Time", value: interview['time']!),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.video_call_rounded),
                label: const Text("Join Meeting"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
