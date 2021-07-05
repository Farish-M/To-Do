import 'package:flutter/material.dart';

import 'todolist_checkbox.dart';
// import 'todolist_editable_text.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("To Do List"),
              backgroundColor: Colors.black,
            ),
            body: Container(
              child: ToDoListCheckBox(),
              alignment: Alignment.topLeft,
            )));
  }
}
