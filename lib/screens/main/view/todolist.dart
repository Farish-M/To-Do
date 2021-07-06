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
              backgroundColor: Colors.black54,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.note_add_outlined),
              backgroundColor: Colors.black,
              //Elevation set to 0 in order to remove the background shadow
              elevation: 0,
            ),
            body: Container(
              child: TodoListBuilder(),
              alignment: Alignment.topLeft,
            )));
  }
}
