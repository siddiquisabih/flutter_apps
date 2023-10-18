import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function callback;
  final Function deleteEvent;

  TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.callback,
    required this.deleteEvent,
  });

  void checkBoxCallback(newValue) {
    // setState(() {
    //   isChecked = newValue!;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => deleteEvent(),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) => callback(newValue),
      ),
    );
  }
}
