import 'model.dart';

class TaskListController {
  List<Task> tasks = [
    Task('Task 1', false),
    Task('Task 2', true),
    Task('Task 3', false),
  ];

  void toggleTaskCompletion(int index) {
    tasks[index].completed = !tasks[index].completed;
  }
}
