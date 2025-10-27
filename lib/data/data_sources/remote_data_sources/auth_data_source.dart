import 'package:dartz/dartz.dart';
import 'package:hire_pro/core/constants/api_constants.dart';
import 'package:hire_pro/core/network/dio_client.dart';
import 'package:hire_pro/core/network/failure.dart';
import 'package:hire_pro/data/models/sign_in_response_model.dart';
import 'package:hire_pro/domain/entity/sign_in_response_entity.dart';

class AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSource({required this.dioClient});

  Future<Either<Failure, SignInResponseEntity>> loginUser({
    required String email,
    required String password,
  }) async {
    final result = await dioClient.postRequest(
      ApiConstants.login,
      data: {"email": email, "password": password},
    );

    return result.fold(
      (msg) {
        return Left(Failure(msg.message));
      },
      (json) {
        if (json.containsKey("error")) {
          return Left(Failure(json["error"]));
        } else {
          final response =
              SignInResponseModel.fromJson(json) as SignInResponseEntity;

          return Right(response);
        }
      },
    );
  }
}
