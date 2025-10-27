import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hire_pro/domain/entity/interviewer_entity.dart';

import 'package:hire_pro/core/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:hire_pro/domain/usecases/manager_usecase.dart';

part 'list_interviewers_event.dart';
part 'list_interviewers_state.dart';

class ListInterviewersBloc
    extends Bloc<ListInterviewersEvent, ListInterviewersState> {
  final ManagerUsecase managerUsecase;

  ListInterviewersBloc({required this.managerUsecase})
    : super(ListInterviewersInitial()) {
    on<FetchInterviewersEvent>(_onFetchInterviewers);
  }

  Future<void> _onFetchInterviewers(
    FetchInterviewersEvent event,
    Emitter<ListInterviewersState> emit,
  ) async {
    emit(ListInterviewersLoading());

    final Either<Failure, List<InterviewerEntity>> result = await managerUsecase
        .fetchInterviewers();

    result.fold(
      (failure) => emit(ListInterviewersError(failure.message)),
      (interviewers) => emit(ListInterviewersLoaded(interviewers)),
    );
  }
}
