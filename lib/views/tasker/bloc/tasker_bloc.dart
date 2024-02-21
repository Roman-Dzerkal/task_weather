import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tasker_event.dart';
part 'tasker_state.dart';

class TaskerBloc extends Bloc<TaskerEvent, TaskerState> {
  TaskerBloc() : super(TaskerInitial()) {
    on<TaskerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
