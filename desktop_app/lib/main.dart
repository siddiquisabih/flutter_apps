import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Todo List', home: new ToDoState());
  }
}

class ToDoState extends StatefulWidget {
  @override
  createState() => new TodoList();
}

class TodoList extends State<ToDoState> {
  List<String> todoList = [];
  TextEditingController toDoText = new TextEditingController();
  void addTodo() {
    if (toDoText.text.trim() != "") {
      setState(() {
        todoList.add(toDoText.text);
        toDoText.clear();
      });
    }
  }

  Widget buildText() {
    print("siddiqui");
    return new ListView.builder(itemBuilder: (context, index) {
      if (index < todoList.length) {
        return _buildTodoItem(todoList[index], index);
      } else {
        return Text("No record Found" + (index+1).toString());
      }
    });
  }

  deleteTodo(index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  // Build a single todo item
  Widget _buildTodoItem(String todoText, int index) {
    // return new ListTile(title: new Text(todoText));

    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(todoText),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () => {deleteTodo(index)},
            )
          ],
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo APP"),
        ),
        body: new Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 30),
                TextField(
                  controller: toDoText,
                  decoration: new InputDecoration(
                    hintText: "Enter something To Save",
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
                SizedBox(height: 30),
                RaisedButton(
                  child: Text("AddTodo"),
                  textColor: Colors.blueAccent,
                  onPressed: addTodo,
                ),
                // Scaffold(
                //   body: buildText(),
                // )
                new Expanded(
                  child: buildText(),
                )
              ],
            )));
  }
}
