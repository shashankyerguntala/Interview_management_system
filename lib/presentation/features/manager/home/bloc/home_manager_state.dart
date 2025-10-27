part of 'home_manager_bloc.dart';

sealed class HomeManagerState extends Equatable {
  const HomeManagerState();

  @override
  List<Object> get props => [];
}

final class HomeManagerInitial extends HomeManagerState {}

final class HomeManagerLoading extends HomeManagerState {}

final class HomeManagerLoaded extends HomeManagerState {
  final List<InterviewEntity> interviews;

  const HomeManagerLoaded({required this.interviews});
  @override
  List<Object> get props => [interviews];
}

final class HomeManagerError extends HomeManagerState {
  final String error;

  const HomeManagerError({required this.error});

  @override
  List<Object> get props => [error];
}
