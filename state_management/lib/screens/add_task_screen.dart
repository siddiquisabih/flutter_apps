import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String taskTitle = '';
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(taskTitle),
          TextField(
            textAlign: TextAlign.center,
            decoration: const InputDecoration(hintText: "Enter Name"),
            onChanged: (value) {
              taskTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<TaskData>(
            builder: (context, value, child) => ElevatedButton(
              onPressed: () {
                value.addNewTodo(taskTitle);
                Navigator.pop(context);

              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent),
              ),
              child: const Text(
                "Add",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
