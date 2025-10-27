import 'package:flutter/material.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';
import 'package:hire_pro/presentation/features/manager/list_interviewers/widgets/slot_chip.dart';

class InterviewerCard extends StatelessWidget {
  final InterviewerEntity interviewer;

  const InterviewerCard({required this.interviewer, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              interviewer.username,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(
              interviewer.email,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),

            const SizedBox(height: 14),

            Text(
              'Available Slots',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),

            const SizedBox(height: 8),

            interviewer.availableSlots.isEmpty
                ? const Text(
                    'No slots available',
                    style: TextStyle(color: Colors.redAccent),
                  )
                : Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: interviewer.availableSlots
                        .map(
                          (slot) => SlotChip(
                            slot: slot,
                            interviewerId: interviewer.id,
                            interviewerName: interviewer.username,
                          ),
                        )
                        .toList(),
                  ),
          ],
        ),
      ),
    );
  }
}
