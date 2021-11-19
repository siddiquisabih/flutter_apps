import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
            child: Text(
          'ajksdh kaj hsdkjah skjdh aksjdh akjsh dkajshkdjahskjhasd',
        )),
        Checkbox(value: true, onChanged: (value) {})
      ],
    );
  }
}