import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_employee_event.dart';
part 'create_employee_state.dart';

class CreateEmployeeBloc extends Bloc<CreateEmployeeEvent, CreateEmployeeState> {
  CreateEmployeeBloc() : super(CreateEmployeeInitial()) {
    on<CreateEmployeeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
