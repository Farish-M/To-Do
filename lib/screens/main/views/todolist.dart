import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/newtodo.dart';
import 'package:productivity_todolist_schedule/screens/main/views/loginpage.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builders/todolist_builder.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              //Back arrow button for the user
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                //Navigates the user to the last visted page, in this context the splashpage
                onPressed: () {
                  Navigator.push(
                      context,
                      //Navigates user to the new to-do page had to hard code direction
                      //due to issues with pressing the back button and returning to the new to-do page
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
              title: Text(
                "To Do List",
              ),
              elevation: 0,
            ),
            //Button for the user to go to the New To-Do page
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    //Navigates user to the new to-do page
                    MaterialPageRoute(builder: (context) => NewToDoPage()));
              },
              child: const Icon(Icons.note_add_outlined),
              //Elevation set to 0 in order to remove the background shadow
              elevation: 0,
            ),
            body: Container(
              child: TodoListBuilder(),
              alignment: Alignment.topLeft,
            )));
  }
}
