import 'package:hire_pro/domain/entity/available_slot_entity.dart';

class AvailableSlotModel extends AvailableSlotEntity {
  AvailableSlotModel({required super.date, required super.slot});

  factory AvailableSlotModel.fromJson(Map<String, dynamic> json) {
    return AvailableSlotModel(date: json['date'], slot: json['slot']);
  }

  AvailableSlotEntity toEntity() {
    return AvailableSlotEntity(date: date, slot: slot);
  }
}
