part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}


class KeyboardChangedEvent extends AppEvent {
  final bool keyboardIsVisible;

  const KeyboardChangedEvent({required this.keyboardIsVisible});
}
