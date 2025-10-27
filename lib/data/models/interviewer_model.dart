import 'package:hire_pro/data/models/available_slot_model.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';

class InterviewerModel extends InterviewerEntity {
  InterviewerModel({
    required super.id,
    required super.username,
    required super.email,
    required super.availableSlots,
  });

  factory InterviewerModel.fromJson(Map<String, dynamic> json) {
    return InterviewerModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      availableSlots: (json['availableSlots'] as List)
          .map((e) => AvailableSlotModel.fromJson(e))
          .toList(),
    );
  }
}
