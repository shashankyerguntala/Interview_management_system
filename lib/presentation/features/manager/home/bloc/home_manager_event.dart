part of 'home_manager_bloc.dart';

sealed class HomeManagerEvent extends Equatable {
  const HomeManagerEvent();

  @override
  List<Object> get props => [];
}

final class FetchInterviews extends HomeManagerEvent {}
