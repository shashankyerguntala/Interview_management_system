import 'package:flutter/material.dart';

import 'package:hire_pro/domain/entity/interview_entity.dart';

import 'package:hire_pro/presentation/features/manager/interview_detail/handle.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/header.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/manager_comment_card.dart';
import 'package:hire_pro/presentation/features/manager/interview_detail/manager_detail_row.dart';

import 'package:hire_pro/presentation/features/manager/interview_detail/section_container.dart';
import 'package:hire_pro/presentation/features/manager/interview_detail/status_score_section.dart';

class InterviewDetailsSheet extends StatelessWidget {
  final InterviewEntity interview;

  const InterviewDetailsSheet({required this.interview, super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              const Handle(),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(interview: interview),
                      const SizedBox(height: 24),

                      SectionContainer(
                        title: "Interview Details",
                        children: [
                          ManagerDetailRow(
                            icon: Icons.person_outline,
                            label: "Candidate",
                            value: interview.candidateName,
                          ),
                          ManagerDetailRow(
                            icon: Icons.layers_outlined,
                            label: "Round Type",
                            value: interview.roundType ?? 'Not specified',
                          ),
                          ManagerDetailRow(
                            icon: Icons.access_time_rounded,
                            label: "Time Slot",
                            value: interview.interviewSlot,
                          ),
                          ManagerDetailRow(
                            icon: Icons.badge_outlined,
                            label: "Interview ID",
                            value: "#${interview.id}",
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      StatusScoreSection(interview: interview),

                      if (interview.comment != null &&
                          interview.comment!.isNotEmpty) ...[
                        const SizedBox(height: 20),
                        SectionContainer(
                          title: "Comments",
                          children: [
                            ManagerCommentCard(comment: interview.comment!),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
