import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Todo List', home: new TodoList());
  }
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo"),
        ),
        body: new Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 30),
                TextField(
                  autofocus: true,
                  decoration: new InputDecoration(
                    hintText: "Enter Name To Save",
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
                SizedBox(height: 30),
                RaisedButton(
                  child: Text("AddTodo"),
                  textColor: Colors.blueAccent,
                  onPressed: () => {},
                )
              ],
            )));
  }
}
