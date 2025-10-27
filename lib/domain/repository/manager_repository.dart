import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';

abstract class ManagerRepository {
  Future<Either<Failure, List<InterviewEntity>>> fetchInterviews();
  Future<Either<Failure, List<InterviewerEntity>>> fetchInterviewers();
}
