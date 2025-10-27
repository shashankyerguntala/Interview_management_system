import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/constants/api_constants.dart';
import 'package:hire_pro/core/network/dio_client.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/data/models/interview_model.dart';
import 'package:hire_pro/data/models/interviewer_model.dart';

import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';

class ManagerDataSource {
  final DioClient dio;

  ManagerDataSource({required this.dio});

  Future<Either<Failure, List<InterviewEntity>>> fetchInterviews() async {
    final response = await dio.getRequest(ApiConstants.getInterviews);
    return response.fold((fail) => Left(fail), (json) {
      final interviewList = (json as List)
          .map((data) => InterviewModel.fromJson(data))
          .toList();
      return Right(interviewList);
    });
  }

  Future<Either<Failure, List<InterviewerEntity>>> fetchInterviewers() async {
    final response = await dio.getRequest(ApiConstants.getInterviewersList);

    return response.fold((fail) => Left(fail), (json) {
      try {
        final interviewerList = (json as List)
            .map((data) => InterviewerModel.fromJson(data))
            .toList();
        return Right(interviewerList);
      } catch (e) {
        return Left(Failure('Parsing error: ${e.toString()}'));
      }
    });
  }
}
