import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';
import 'package:state_management/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  // final List<Task> tasks = [
  //   Task(name: "new1"),
  //   Task(name: "new2"),
  //   Task(name: "new3"),
  // ];

  void checkBoxToggle(value) {}

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) => ListView.builder(
          itemCount: value.taskCount,
          itemBuilder: (context, index) {
            final taskItem = value.tasks[index];
            return TaskTile(
              isChecked: taskItem.isDone,
              taskTitle: taskItem.name,
              callback: (newValue) {
                value.markDone(taskItem);
              },
              deleteEvent: () {
                value.deleteTask(taskItem);
              },
            );
          }),
    );
  }
}
