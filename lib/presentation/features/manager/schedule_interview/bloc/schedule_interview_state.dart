part of 'schedule_interview_bloc.dart';

sealed class ScheduleInterviewState extends Equatable {
  const ScheduleInterviewState();
  
  @override
  List<Object> get props => [];
}

final class ScheduleInterviewInitial extends ScheduleInterviewState {}
