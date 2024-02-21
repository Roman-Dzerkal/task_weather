import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/app/bloc/app_bloc.dart';
import 'package:task_weather/repositories/task_repository/interface_task_repository.dart';
import 'package:task_weather/repositories/task_repository/task_repository.dart';
import 'package:task_weather/repositories/weather_repository/interface_weather_repository.dart';
import 'package:task_weather/repositories/weather_repository/weather_repository.dart';
import 'package:task_weather/services/task_service.dart';
import 'package:task_weather/services/weather_service.dart';
import 'package:task_weather/views/tasker/tasker_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    // test();
    Bloc.observer = DebugBlocObserver();
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class DebugBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint(event.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(transition.toString());
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint(error.toString());
  }
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// Size get size => MediaQuery.of(navigatorKey.currentContext!).size;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IWeatherRepository>(
          lazy: true,
          create: (context) => WeatherRepository(
            weatherService: WeatherService(),
          ),
        ),
        RepositoryProvider<ITaskRepository>(
          lazy: true,
          create: (context) => TaskRepository(
            taskService: TaskService(),
          ),
        ),
      ],
      child: BlocProvider(
          create: (context) => AppBloc(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'WufWorld',
            navigatorKey: navigatorKey,
            home: const TaskerView(),
          )),
    );
  }
}
