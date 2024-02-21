abstract class ITaskRepository {
  Future<void> addTask({
    required String title,
    required String description});
}