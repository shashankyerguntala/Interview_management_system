import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/constants/string_constants.dart';
import 'package:hire_pro/presentation/features/admin/widgets/candidate_card.dart';

//! make a single screen and merge the L1 , L2 and shorlisted list
class PassedL1ListScreen extends StatelessWidget {
  const PassedL1ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> candidates = [
      {'name': 'Aarav Sharma', 'role': 'Flutter Developer', 'score': '89'},
      {'name': 'Riya Patel', 'role': 'Backend Engineer', 'score': '84'},
      {'name': 'Devansh Mehta', 'role': 'UI/UX Designer', 'score': '91'},
      {'name': 'Isha Verma', 'role': 'QA Tester', 'score': '78'},
      {'name': 'Neel Joshi', 'role': 'Frontend Intern', 'score': '82'},
    ];

    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        title: const Text(
          StringConstants.l1ClearedCandidates,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: ColorConstants.surfaceColor,
        foregroundColor: ColorConstants.textPrimaryColor,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: candidates.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final candidate = candidates[index];
          return CandidateCard(candidate: candidate);
        },
      ),
    );
  }
}
