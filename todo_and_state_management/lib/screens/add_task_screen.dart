import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: const TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
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
                onPressed: () {},
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
