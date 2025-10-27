import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hire_pro/core/di/di.dart';

import 'package:hire_pro/domain/usecases/manager_usecase.dart';
import 'package:hire_pro/presentation/features/manager/list_interviewers/bloc/list_interviewers_bloc.dart';
import 'package:hire_pro/presentation/features/manager/list_interviewers/widgets/interviewer_card.dart';

class ListInterviewerScreen extends StatelessWidget {
  const ListInterviewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final managerUsecase = ManagerUsecase(managerRepository: di());

    return BlocProvider(
      create: (_) =>
          ListInterviewersBloc(managerUsecase: managerUsecase)
            ..add(FetchInterviewersEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(' Interviewers List'),
          centerTitle: true,
        ),
        body: BlocBuilder<ListInterviewersBloc, ListInterviewersState>(
          builder: (context, state) {
            if (state is ListInterviewersLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ListInterviewersError) {
              return Center(
                child: Text(
                  state.message,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              );
            } else if (state is ListInterviewersLoaded) {
              final interviewers = state.interviewers;
              if (interviewers.isEmpty) {
                return const Center(child: Text('No interviewers found.'));
              }

              return ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: interviewers.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final interviewer = interviewers[index];
                  return InterviewerCard(interviewer: interviewer);
                },
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
