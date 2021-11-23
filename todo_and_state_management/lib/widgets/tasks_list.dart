import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';

class TaskList extends StatelessWidget {
  final List<TaskModal> listData;
  final Function toggleCheckbox;

  const TaskList({
    required this.listData,
    required this.toggleCheckbox,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: listData[index].isDone,
          taskTitle: listData[index].name,
          toggleCheckbox: (value) => toggleCheckbox(value, index),
        );
      },
      itemCount: listData.length,
    );
  }
} 
// (bool value) {
//             setState(() {
//               task[index].toogleDone();
//             });
//           }



// class TaskList extends StatefulWidget {
//   const TaskList({Key? key}) : super(key: key);

//   @override
//   State<TaskList> createState() => _TaskListState();
// }

// class _TaskListState extends State<TaskList> {
//   List<Task> task = [
//     Task(name: 'buy Milk'),
//     Task(name: 'buy Food'),
//     Task(name: 'buy something'),
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         return TaskTile(
//           isChecked: task[index].isDone,
//           taskTitle: task[index].name,
//           toggleCheckbox: (bool value) {
//             setState(() {
//               task[index].toogleDone();
//             });
//           },
//         );
//       },
//       itemCount: task.length,
//     );
//   }
// }
