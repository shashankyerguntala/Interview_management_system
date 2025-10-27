import 'package:flutter/material.dart';
import 'package:hire_pro/domain/entity/available_slot_entity.dart';
import 'package:hire_pro/presentation/features/manager/schedule_interview/screen/schedule_interview_screen.dart';

class SlotChip extends StatelessWidget {
  final AvailableSlotEntity slot;
  final int interviewerId;
  final String interviewerName;

  const SlotChip({
    super.key,
    required this.slot,
    required this.interviewerId,
    required this.interviewerName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ScheduleInterviewScreen(
              interviewerId: interviewerId,
              interviewerName: interviewerName,
              date: slot.date,
              interviewSlot: slot.slot,
            ),
          ),
        );
      },
      child: Container(
        width: 120,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              slot.date,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              slot.slot,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
