import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hire_pro/core/constants/string_constants.dart';
import 'package:hire_pro/core/di/di.dart';
import 'package:hire_pro/core/helper_functions.dart';

import 'package:hire_pro/presentation/features/manager/home/bloc/home_manager_bloc.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/app_drawer.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/empty_view.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/error_view.dart';
import 'package:hire_pro/presentation/features/manager/home/widgets/interview_list.dart';

class ManagerScreen extends StatelessWidget {
  const ManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<HomeManagerBloc>()..add(FetchInterviews()),
      child: Scaffold(
        drawer: AppDrawer(isDarkTheme: false, onThemeChanged: (bool value) {}),
        appBar: AppBar(
          title: const Text(
            StringConstants.managerTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: BlocConsumer<HomeManagerBloc, HomeManagerState>(
          listener: (context, state) {
            if (state is HomeManagerError) {
              HelperFunctions.showSnackBar(context, state.error, true);
            }
          },
          builder: (context, state) {
            if (state is HomeManagerLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is HomeManagerError) {
              return ErrorView(message: state.error);
            }

            if (state is HomeManagerLoaded) {
              final interviews = state.interviews;

              if (interviews.isEmpty) {
                return const EmptyView();
              }

              return InterviewsList(interviews: interviews);
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
