part of 'list_interviewers_bloc.dart';

abstract class ListInterviewersState extends Equatable {
  const ListInterviewersState();

  @override
  List<Object?> get props => [];
}

class ListInterviewersInitial extends ListInterviewersState {}

class ListInterviewersLoading extends ListInterviewersState {}

class ListInterviewersLoaded extends ListInterviewersState {
  final List<InterviewerEntity> interviewers;

  const ListInterviewersLoaded(this.interviewers);

  @override
  List<Object?> get props => [interviewers];
}

class ListInterviewersError extends ListInterviewersState {
  final String message;

  const ListInterviewersError(this.message);

  @override
  List<Object?> get props => [message];
}
