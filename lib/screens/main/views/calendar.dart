import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/calendar/calendar_builder.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Calendar",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: CalendarBuilder(),
      ),
    );
  }
}
