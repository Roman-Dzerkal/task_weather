part of 'app_bloc.dart';

sealed class AppState extends Equatable {
  const AppState({
    this.errorMessage = '',
  });

  final String errorMessage;

  AppState copyWith({
    bool? keyboardIsVisible,
    String? errorMessage,
  }) =>
      AppInitial(
        errorMessage: errorMessage ?? '',
      );

  @override
  List<Object> get props => [
        errorMessage,
      ];
}

final class AppInitial extends AppState {
  const AppInitial({
    super.errorMessage,
  });
}
