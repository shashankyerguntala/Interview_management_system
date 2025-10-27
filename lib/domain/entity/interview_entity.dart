class InterviewEntity {
  final int id;
  final String candidateName;
  final String? roundType;
  final String interviewStatus;
  final double score;
  final String? comment;
  final String interviewSlot;

  InterviewEntity({
    required this.id,
    required this.candidateName,
    required this.roundType,
    required this.interviewStatus,
    required this.score,
    required this.comment,
    required this.interviewSlot,
  });

  InterviewEntity copyWith({
    int? id,
    String? candidateName,
    String? roundType,
    String? interviewStatus,
    double? score,
    String? comment,
    String? interviewSlot,
  }) {
    return InterviewEntity(
      id: id ?? this.id,
      candidateName: candidateName ?? this.candidateName,
      roundType: roundType ?? this.roundType,
      interviewStatus: interviewStatus ?? this.interviewStatus,
      score: score ?? this.score,
      comment: comment ?? this.comment,
      interviewSlot: interviewSlot ?? this.interviewSlot,
    );
  }
}
