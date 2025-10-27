import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/data/data_sources/remote_data_sources/auth_data_source.dart';
import 'package:hire_pro/domain/entity/sign_in_response_entity.dart';
import 'package:hire_pro/domain/repository/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, SignInResponseEntity>> login({
    required String email,
    required String password,
  }) async {
    final result = await remoteDataSource.loginUser(
      email: email,
      password: password,
    );

    return result.fold((failure) => Left(failure), (user) => right(user));
  }
}
