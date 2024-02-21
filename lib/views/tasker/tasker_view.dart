import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_weather/views/tasker/bloc/tasker_bloc.dart';

class TaskerView extends StatelessWidget {
  const TaskerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskerBloc(),
      child: TaskerLayout(),
    );
  }
}

class TaskerLayout extends StatelessWidget {
  const TaskerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskerBloc, TaskerState>(
      builder: (context, state) {
        return Scaffold();
      },
    );
  }
}
