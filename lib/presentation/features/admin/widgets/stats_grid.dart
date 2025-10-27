import 'package:flutter/material.dart';
import 'package:hire_pro/presentation/features/admin/screen/final_selection_list_screen.dart';
import 'package:hire_pro/presentation/features/admin/screen/total_candidates_list.dart';
import 'package:hire_pro/presentation/features/admin/widgets/stat_card.dart';

class StatsCardsGrid extends StatelessWidget {
  final Map<String, int> data;

  const StatsCardsGrid({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final cards = [
      {
        'label': 'Total Applications',
        'value': data['total'].toString(),
        'icon': Icons.people_rounded,
        'color': const Color(0xFF6366F1),
        'bgColor': const Color(0xFFEEF2FF),
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const TotalCandidatesList()),
          );
        },
      },
      {
        'label': 'Passed Level 1',
        'value': data['l1'].toString(),
        'icon': Icons.check_circle_rounded,
        'color': const Color(0xFF10B981),
        'bgColor': const Color(0xFFD1FAE5),
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PassedL1ListScreen()),
          );
        },
      },
      {
        'label': 'Passed Level 2',
        'value': data['l2'].toString(),
        'icon': Icons.verified_rounded,
        'color': const Color(0xFFF59E0B),
        'bgColor': const Color(0xFFFEF3C7),
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PassedL1ListScreen()),
          );
        },
      },
      {
        'label': 'Final Selection',
        'value': data['shortlisted'].toString(),
        'icon': Icons.workspace_premium_rounded,
        'color': const Color(0xFFEC4899),
        'bgColor': const Color(0xFFFCE7F3),
        'onTap': () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PassedL1ListScreen()),
          );
        },
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      itemCount: cards.length,
      itemBuilder: (context, index) {
        final card = cards[index];
        return StatCard(
          label: card['label'] as String,
          value: card['value'] as String,
          icon: card['icon'] as IconData,
          color: card['color'] as Color,
          bgColor: card['bgColor'] as Color,
          onTap: card['onTap'] as VoidCallback,
        );
      },
    );
  }
}
