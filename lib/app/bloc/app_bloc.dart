import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppInitial()) {
    on<KeyboardChangedEvent>(
        (event, emit) => _keyboardChangedEvent(event, emit));
  }

  void _keyboardChangedEvent(
    KeyboardChangedEvent event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(keyboardIsVisible: event.keyboardIsVisible));
  }
}
