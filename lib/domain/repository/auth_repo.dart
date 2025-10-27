import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/domain/entity/sign_in_response_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, SignInResponseEntity>> login({
    required String email,
    required String password,
  });
}
