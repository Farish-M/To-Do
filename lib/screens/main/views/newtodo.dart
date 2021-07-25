import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builders/newtodolist_builder.dart';

class NewToDoPage extends StatelessWidget {
  const NewToDoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("New To Do"),
            //Creates the back arrow button
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
              onPressed: () {
                //Navigates the user to the previous page of NewToDo
                Navigator.of(context).pop(_createRoute());
              },
            ),
          ),
          body: NewToDo(),
        ));
  }
}

//The animation that plays when IconButton is pressed
//Moves the page down and into the to-do list page
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => NewToDoPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      //Sliding transition of the navigation
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
