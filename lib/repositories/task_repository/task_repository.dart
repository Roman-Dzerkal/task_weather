import 'package:task_weather/repositories/task_repository/interface_task_repository.dart';
import 'package:task_weather/services/task_service.dart';

class TaskRepository extends ITaskRepository {
  final TaskService taskService;

  TaskRepository({required this.taskService});

  @override
  Future<void> addTask({required String title, required String description}) {
    // TODO: implement addTask
    throw UnimplementedError();
  }
}
