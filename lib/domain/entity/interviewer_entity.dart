import 'package:hire_pro/domain/entity/available_slot_entity.dart';

class InterviewerEntity {
  final int id;
  final String username;
  final String email;
  final List<AvailableSlotEntity> availableSlots;

  const InterviewerEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.availableSlots,
  });
}
