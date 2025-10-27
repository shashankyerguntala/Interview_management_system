import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hire_pro/domain/entity/interview_entity.dart';
import 'package:hire_pro/domain/usecases/manager_usecase.dart';

part 'home_manager_event.dart';
part 'home_manager_state.dart';

class HomeManagerBloc extends Bloc<HomeManagerEvent, HomeManagerState> {
  final ManagerUsecase managerUsecase;
  HomeManagerBloc(this.managerUsecase) : super(HomeManagerInitial()) {
    on<FetchInterviews>(fetchInterviews);
  }

  FutureOr<void> fetchInterviews(
    FetchInterviews event,
    Emitter<HomeManagerState> emit,
  ) async {
    emit(HomeManagerLoading());
    final result = await managerUsecase.fetchInterviews();
    result.fold(
      (fail) => emit(HomeManagerError(error: fail.message)),
      (interview) => emit(HomeManagerLoaded(interviews: interview)),
    );
  }
}
