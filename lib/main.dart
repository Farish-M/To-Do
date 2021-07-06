import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/view/mainoverview_page.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserController(),
    );
  }
}
