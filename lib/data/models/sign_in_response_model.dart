import 'package:hire_pro/domain/entity/sign_in_response_entity.dart';

class SignInResponseModel extends SignInResponseEntity {
  SignInResponseModel({
    required super.message,
    required super.uid,
    required super.username,
    required super.email,
    required super.role,
    required super.token,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) {
    return SignInResponseModel(
      message: json['message'] ?? '',
      uid: json['uid'],
      username: json['username'],
      email: json['email'],
      role: json['role'],
      token: json['token'],
    );
  }
}
