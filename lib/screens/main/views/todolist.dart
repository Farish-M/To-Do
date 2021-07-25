import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builder/newtodolist_builder.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builder/todolist_builder.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "To Do List",
                style: TextStyle(color: Colors.black),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewToDo(),
                ),
              ),
              child: const Icon(Icons.note_add_outlined),
              backgroundColor: Colors.black,
              //Elevation set to 0 in order to remove the background shadow
              elevation: 0,
            ),
            backgroundColor: Colors.white,
            body: Container(
              child: TodoListBuilder(),
              alignment: Alignment.topLeft,
            )));
  }
}
