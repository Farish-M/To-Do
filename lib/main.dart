import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/view/mainoverview_page.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builder.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TodoListBuilder(),
      ),
    );
  }
}
