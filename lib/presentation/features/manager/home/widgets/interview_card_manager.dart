import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/helper_functions.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/info_row.dart';
import 'package:hire_pro/presentation/features/manager/interview_detail/interview_detail_sheet.dart';

class InterviewCardManager extends StatelessWidget {
  final InterviewEntity interview;

  const InterviewCardManager({required this.interview, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      color: Colors.white,
      shadowColor: Colors.black12,
      child: InkWell(
        onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => InterviewDetailsSheet(interview: interview),
        ),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorConstants.gradientStart,
                      ColorConstants.gradientEnd,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    interview.candidateName[0].toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      interview.candidateName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 6),
                    InfoRow(
                      icon: Icons.layers_outlined,
                      text: interview.roundType ?? 'N/A',
                    ),
                    const SizedBox(height: 4),
                    InfoRow(
                      icon: Icons.access_time_rounded,
                      text: interview.interviewSlot,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: HelperFunctions.getStatusColor(
                        interview.interviewStatus,
                      ).withAlpha(10),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: HelperFunctions.getStatusColor(
                          interview.interviewStatus,
                        ).withAlpha(30),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      interview.interviewStatus,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: HelperFunctions.getStatusColor(
                          interview.interviewStatus,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
