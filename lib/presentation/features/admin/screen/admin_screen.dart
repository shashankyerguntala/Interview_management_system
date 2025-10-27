import 'package:flutter/material.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/constants/string_constants.dart';
import 'package:hire_pro/presentation/features/admin/widgets/bar_chart_widget.dart';

import 'package:hire_pro/presentation/features/admin/widgets/section_header.dart';
import 'package:hire_pro/presentation/features/admin/widgets/stats_grid.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recruitmentData = {
      'total': 500,
      'gd': 350,
      'l1': 200,
      'l2': 120,
      'l3': 60,
      'shortlisted': 25,
    };

    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConstants.surfaceColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(10),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: ColorConstants.textPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.recruitmentData,
              style: TextStyle(
                color: ColorConstants.textPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              StringConstants.trackYourHiring,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ColorConstants.primaryColor,
                  ColorConstants.primaryColor.withAlpha(8),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.primaryColor.withAlpha(60),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(Icons.person_rounded, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatsCardsGrid(data: recruitmentData),
            const SizedBox(height: 32),

            SectionHeader(
              title: StringConstants.performanceMetrics,
              icon: Icons.analytics_rounded,
            ),
            const SizedBox(height: 16),
            BarChartWidget(data: recruitmentData),
          ],
        ),
      ),
    );
  }
}
