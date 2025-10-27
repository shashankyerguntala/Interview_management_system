part of 'list_interviewers_bloc.dart';

abstract class ListInterviewersEvent extends Equatable {
  const ListInterviewersEvent();

  @override
  List<Object?> get props => [];
}

class FetchInterviewersEvent extends ListInterviewersEvent {}
