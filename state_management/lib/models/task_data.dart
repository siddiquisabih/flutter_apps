import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:state_management/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: "new2"),
    Task(name: "new3"),
    Task(name: "new4"),
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addNewTodo(String newTask) {
    if (newTask.isNotEmpty) {
      _tasks.add(Task(name: newTask));
      notifyListeners();
    }
  }

  void markDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
