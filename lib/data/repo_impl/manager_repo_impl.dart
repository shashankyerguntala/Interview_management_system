import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/data/data_sources/remote_data_sources/manager_data_source.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';
import 'package:hire_pro/domain/repository/manager_repository.dart';

class ManagerRepoImpl implements ManagerRepository {
  final ManagerDataSource managerDataSource;

  ManagerRepoImpl({required this.managerDataSource});
  @override
  Future<Either<Failure, List<InterviewEntity>>> fetchInterviews() {
    return managerDataSource.fetchInterviews();
  }

  @override
  Future<Either<Failure, List<InterviewerEntity>>> fetchInterviewers() async {
    return await managerDataSource.fetchInterviewers();
  }
}
