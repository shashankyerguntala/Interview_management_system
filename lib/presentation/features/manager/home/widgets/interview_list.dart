import 'package:flutter/material.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/interview_card_manager.dart';

class InterviewsList extends StatelessWidget {
  final List<InterviewEntity> interviews;

  const InterviewsList({required this.interviews, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: interviews.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return InterviewCardManager(interview: interviews[index]);
      },
    );
  }
}
