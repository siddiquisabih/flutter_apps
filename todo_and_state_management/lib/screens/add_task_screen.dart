import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addNewTodo;

  AddTask({required this.addNewTodo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String todoText = '';
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'Add Task',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
              child: TextField(
                onChanged: (value) {
                  todoText = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  // hintText: "Type Here",
                  focusColor: Colors.lightBlueAccent,
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
              child: MaterialButton(
                minWidth: double.infinity,
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                onPressed: () => addNewTodo(todoText),
                highlightColor: Colors.lightBlueAccent,
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
