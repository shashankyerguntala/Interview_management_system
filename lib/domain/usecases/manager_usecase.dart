import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';
import 'package:hire_pro/domain/repository/manager_repository.dart';

class ManagerUsecase {
  final ManagerRepository managerRepository;

  ManagerUsecase({required this.managerRepository});

  Future<Either<Failure, List<InterviewEntity>>> fetchInterviews() {
    return managerRepository.fetchInterviews();
  }

  Future<Either<Failure, List<InterviewerEntity>>> fetchInterviewers() {
    return managerRepository.fetchInterviewers();
  }
}
