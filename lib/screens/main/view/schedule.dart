import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/calendar_builder.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Schedule"),
          backgroundColor: Colors.black54,
        ),
        body: Calendar(),
      ),
    );
  }
}
