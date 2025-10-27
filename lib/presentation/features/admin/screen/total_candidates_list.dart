import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/constants/string_constants.dart';
import 'package:hire_pro/presentation/features/admin/widgets/candidate_card.dart';

class TotalCandidatesList extends StatelessWidget {
  const TotalCandidatesList({super.key});

  final List<Map<String, dynamic>> candidates = const [
    {"name": "Alice Johnson", "status": "Pending", "email": "alice@mail.com"},
    {"name": "Bob Smith", "status": "Passed L1", "email": "bob@mail.com"},
    {"name": "Carol White", "status": "Passed L2", "email": "carol@mail.com"},
    {"name": "David Brown", "status": "Shortlisted", "email": "david@mail.com"},
    {"name": "Eva Green", "status": "Pending", "email": "eva@mail.com"},
    {"name": "Frank Taylor", "status": "Passed L1", "email": "frank@mail.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        title: const Text(
          StringConstants.totalCandidates,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorConstants.textPrimaryColor,
          ),
        ),
        backgroundColor: ColorConstants.surfaceColor,
        elevation: 1,
        iconTheme: const IconThemeData(color: ColorConstants.textPrimaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: StringConstants.searchCandidates,
                hintStyle: TextStyle(color: ColorConstants.textTertiaryColor),
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorConstants.textSecondaryColor,
                ),
                filled: true,
                fillColor: ColorConstants.elevatedSurfaceColor,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            Expanded(
              child: ListView.separated(
                itemCount: candidates.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final candidate = candidates[index];
                  return CandidateCard(candidate: candidate);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
