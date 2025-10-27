import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'schedule_interview_event.dart';
part 'schedule_interview_state.dart';

class ScheduleInterviewBloc extends Bloc<ScheduleInterviewEvent, ScheduleInterviewState> {
  ScheduleInterviewBloc() : super(ScheduleInterviewInitial()) {
    on<ScheduleInterviewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
