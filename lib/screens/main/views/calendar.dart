import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/calendar_builder.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Calendar",
          ),
          elevation: 0,
        ),
        //Displays the widget for the calendar
        body: CalendarBuilder(),
      ),
    );
  }
}
