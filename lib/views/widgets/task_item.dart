import 'package:flutter/material.dart';
import '../../models/task.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/todo_list_viewmodel.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<ToDoListViewModel>();

    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        value: task.isDone,
        onChanged: (value) {
          viewModel.toggleTaskDone(task.id);
        },
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          viewModel.removeTask(task.id);
        },
      ),
    );
  }
}
