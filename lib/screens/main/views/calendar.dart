import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/accountpage.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/calendar_builder.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: const Icon(Icons.account_circle),
            color: Colors.white,
            //Navigates the user to the last visted page, in this context the splashpage
            onPressed: () {
              Navigator.push(
                  context,
                  //Navigates user to the new to-do page had to hard code direction
                  //due to issues with pressing the back button and returning to the new to-do page
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
          ),
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
