import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hire_pro/core/constants/color_constants.dart';
import 'package:hire_pro/core/constants/string_constants.dart';
import 'package:hire_pro/core/di/di.dart';
import 'package:hire_pro/core/helper_functions.dart';
import 'package:hire_pro/domain/entity/role_enum.dart';
import 'package:hire_pro/presentation/features/authentication/sign_in/bloc/sign_in_bloc.dart';
import 'package:hire_pro/presentation/features/authentication/sign_in/widgets/sign_in_appbar.dart';
import 'package:hire_pro/presentation/features/authentication/sign_in/widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return BlocProvider(
      create: (_) => di<SignInBloc>(),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInFailure) {
            HelperFunctions.showSnackBar(context, state.message, true);
          } else if (state is SignInSuccess) {
            HelperFunctions.showSnackBar(context, state.message, false);

            switch (state.role) {
              case UserRole.admin:
                context.go(StringConstants.admin);
                break;
              case UserRole.manager:
                context.go(StringConstants.managerHome);
                break;
              case UserRole.interviewer:
                context.go(StringConstants.interviewer);
                break;
              case UserRole.talentAcquisition:
                context.go(StringConstants.talentAcquisition);
                break;
            }
          }
        },
        builder: (context, state) {
          final obscurePassword = state is SignInPasswordVisibilityChanged
              ? state.isPasswordObscured
              : true;
          final isLoading = state is SignInLoading;

          return Scaffold(
            backgroundColor: ColorConstants.backgroundColor,
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SignInAppBar(),
                    const SizedBox(height: 12),
                    SignInForm(
                      formKey: formKey,
                      emailController: emailController,
                      passwordController: passwordController,
                      obscurePassword: obscurePassword,
                      isLoading: isLoading,
                      onPasswordVisibilityToggle: () {
                        context.read<SignInBloc>().add(ShowPasswordEvent());
                      },
                      onSubmit: () {
                        if (formKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                          context.read<SignInBloc>().add(
                            SignInRequested(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
