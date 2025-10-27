part of 'list_interviewers_bloc.dart';

sealed class ListInterviewersState extends Equatable {
  const ListInterviewersState();
  
  @override
  List<Object> get props => [];
}

final class ListInterviewersInitial extends ListInterviewersState {}
