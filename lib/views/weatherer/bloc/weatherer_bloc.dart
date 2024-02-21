import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'weatherer_event.dart';
part 'weatherer_state.dart';

class WeathererBloc extends Bloc<WeathererEvent, WeathererState> {
  WeathererBloc() : super(WeathererInitial()) {
    on<WeathererEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
