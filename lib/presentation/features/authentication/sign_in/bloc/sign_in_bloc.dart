import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hire_pro/data/data_sources/local_data_sources/auth_local_storage.dart';
import 'package:hire_pro/domain/entity/role_enum.dart';
import 'package:hire_pro/domain/usecases/auth_usecase.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthUsecase authUsecase;
  bool isPasswordObscured = true;
  int? uid;
  String? role;
  SignInBloc({required this.authUsecase}) : super(const SignInInitial()) {
    on<ShowPasswordEvent>((event, emit) {
      isPasswordObscured = !isPasswordObscured;
      emit(SignInPasswordVisibilityChanged(isPasswordObscured));
    });

    on<SignInRequested>((event, emit) async {
      emit(SignInLoading());
      final result = await authUsecase.login(
        email: event.email,
        password: event.password,
      );

      return result.fold((failure) => emit(SignInFailure(failure.message)), (
        user,
      ) async {
        final userRole = UserRole.fromString(user.role);
        await AuthLocalStorage.saveToken(user.token);
        await AuthLocalStorage.saveUid(user.uid);

        return emit(SignInSuccess(user.message, userRole));
      });
    });
  }
}
