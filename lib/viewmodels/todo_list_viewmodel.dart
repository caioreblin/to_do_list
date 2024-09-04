import 'package:flutter/material.dart';
import '../models/task.dart';

class ToDoListViewModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(id: DateTime.now().millisecondsSinceEpoch, title: title));
    notifyListeners();
  }

  void toggleTaskDone(int id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void removeTask(int id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }
}
