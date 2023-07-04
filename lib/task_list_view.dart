import 'package:flutter/material.dart';
import 'package:task_list_mvc/task_controller.dart';

class TaskListView extends StatefulWidget {
  final TaskListController controller;

  const TaskListView({
    super.key,
    required this.controller
  });

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.controller.tasks.length,
      itemBuilder: (context, index) {
        final task = widget.controller.tasks[index];
        return ListTile(
          title: Text(task.title),
          leading: Checkbox(
            value: task.completed,
            onChanged: (value) {
              setState(() =>
                widget.controller.toggleTaskCompletion(index)
              );
            },
          ),
        );
      },
    );
  }
}
