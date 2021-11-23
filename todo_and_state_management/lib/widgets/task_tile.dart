import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  final Function toggleCheckbox;

  const TaskTile({Key? key, required this.isChecked, required this.taskTitle , required this.toggleCheckbox})
      : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Flexible(
            child: Text(
              taskTitle,
              style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
          Checkbox(
            value: isChecked,
            onChanged: (value) => toggleCheckbox(value),
          )
        ],
      ),
    );
  }
}
