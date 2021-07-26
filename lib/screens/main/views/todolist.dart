import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/newtodo.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builders/todolist_builder.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              //Back arrow button for the user
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                //Navigates the user to the NewToDoPage
                onPressed: () => Navigator.of(context).pop(_createRoute()),
              ),
              title: Text(
                "To Do List",
              ),
              elevation: 0,
            ),
            //Button for the user to go to the New To-Do page
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
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

//Animation for the page to go down into the next page
//Connects to the FloatingActionButton above
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => NewToDoPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      //Animates the sliding transition once the back button is pushed
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
