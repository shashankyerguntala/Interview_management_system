import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'list_interviewers_event.dart';
part 'list_interviewers_state.dart';

class ListInterviewersBloc extends Bloc<ListInterviewersEvent, ListInterviewersState> {
  ListInterviewersBloc() : super(ListInterviewersInitial()) {
    on<ListInterviewersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
