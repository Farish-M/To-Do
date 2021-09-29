import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/mainoverview_page.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist_builders/newtodolist_builder.dart';

class NewToDoPage extends StatelessWidget {
  const NewToDoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UserController()))
          },
          child: const Icon(Icons.note_add_outlined),
          //Elevation set to 0 in order to remove the background shadow
          elevation: 0,
        ),
      ),
    );
  }
}

//Creates the route to the previous page that the user visted
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => UserController(),
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
