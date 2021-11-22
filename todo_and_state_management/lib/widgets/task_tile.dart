import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  getCheckboxValue(bool value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            'ajksdh kaj hsdkjah skjdh aksjdh akjsh dkajshkdjahskjhasd',
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
        ),
        TaskCheckBox(
          checkedValue: isChecked,
          toggleCheckbox: getCheckboxValue,
        )
      ],
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkedValue;
  final Function toggleCheckbox;

  TaskCheckBox({required this.checkedValue, required this.toggleCheckbox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkedValue, onChanged: (value) => toggleCheckbox(value));
  }
}
