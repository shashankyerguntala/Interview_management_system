class SignInResponseEntity {
  final String message;
  final int uid;
  final String username;
  final String email;
  final String role;
  final String token;

  SignInResponseEntity({
    required this.message,
    required this.uid,
    required this.username,
    required this.email,
    required this.role,
    required this.token,
  });
  SignInResponseEntity copyWith({
    String? error,
    String? message,
    int? uid,
    String? username,
    String? email,
    String? role,
    String? token,
  }) {
    return SignInResponseEntity(
      message: message ?? this.message,
      uid: uid ?? this.uid,
      username: username ?? this.username,
      email: email ?? this.email,
      role: role ?? this.role,
      token: token ?? this.token,
    );
  }
}
