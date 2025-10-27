import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/domain/entity/sign_in_response_entity.dart';
import 'package:hire_pro/domain/repository/auth_repo.dart';

class AuthUsecase {
  final AuthRepository repository;

  const AuthUsecase({required this.repository});

  Future<Either<Failure, SignInResponseEntity>> login({
    required String email,
    required String password,
  }) {
    return repository.login(email: email, password: password);
  }
}
