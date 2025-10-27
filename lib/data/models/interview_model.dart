import 'package:hire_pro/domain/entity/interview_entity.dart';

class InterviewModel extends InterviewEntity {
  InterviewModel({
    required super.id,
    required super.candidateName,
    required super.roundType,
    required super.interviewStatus,
    required super.score,
    required super.comment,
    required super.interviewSlot,
  });

  factory InterviewModel.fromJson(Map<String, dynamic> json) {
    return InterviewModel(
      id: json['id'],
      candidateName: json['candidateName'],
      roundType: json['roundType'],
      interviewStatus: json['interviewStatus'],
      score: json['score'],
      comment: json['comment'],
      interviewSlot: json['interviewSlot'],
    );
  }
}
