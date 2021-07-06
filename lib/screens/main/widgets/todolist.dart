import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builder.dart';

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
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add_circle_outline_rounded),
              backgroundColor: Colors.green,
            ),
            body: Container(
              child: TodoListBuilder(),
              alignment: Alignment.topLeft,
            )));
  }
}
