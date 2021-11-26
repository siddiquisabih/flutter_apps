import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_and_state_management/models/task.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';
import '../models//task_data.dart';



class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  

  List<TaskModal> taskList = [
    TaskModal(name: 'buy Milk'),
    TaskModal(name: 'buy Food'),
    TaskModal(name: 'buy something'),
  ];

  void _addNewTask(value) {
    setState(() {
      taskList.add(TaskModal(name: value));
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(
              addNewTodo: (value) => _addNewTask(value),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskList} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TaskList(
                listData: taskList,
                toggleCheckbox: (bool value, int index) {
                  setState(() {
                    taskList[index].toogleDone();
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
