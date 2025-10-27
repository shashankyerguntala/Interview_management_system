import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/presentation/features/interviewer/widgets/interview_card.dart';

class InterviewerHomePage extends StatelessWidget {
  const InterviewerHomePage({super.key});

  final List<Map<String, String>> _interviews = const [
    {
      'candidateName': 'Aarav Sharma',
      'candidateEmail': 'aarav.sharma@example.com',
      'role': 'Flutter Developer Intern',
      'time': '10:00 AM - 10:45 AM',
      'meetingLink': 'https://meet.google.com/abc-flutter',
    },
    {
      'candidateName': 'Riya Patel',
      'candidateEmail': 'riya.patel@example.com',
      'role': 'Backend Developer',
      'time': '11:00 AM - 11:45 AM',
      'meetingLink': 'https://meet.google.com/backend-riya',
    },
    {
      'candidateName': 'Devansh Mehta',
      'candidateEmail': 'devansh.mehta@example.com',
      'role': 'UI/UX Designer',
      'time': '2:00 PM - 2:45 PM',
      'meetingLink': 'https://meet.google.com/devansh-uiux',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        title: const Text(
          "My Scheduled Interviews",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: ColorConstants.surfaceColor,
        elevation: 0,
        centerTitle: true,
        foregroundColor: ColorConstants.textPrimaryColor,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _interviews.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final interview = _interviews[index];
          return InterviewCard(interview: interview);
        },
      ),
    );
  }
}
