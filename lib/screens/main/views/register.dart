import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/splash_page.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/register_widget.dart';

//Page that holds register widget for users to register
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome!"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
            onPressed: () {
              //Navigates the user to the previous page of NewToDo
              Navigator.of(context).pop(_createRoute());
            },
          ),
        ),
        body: Container(
            child: Center(
          child: Container(
            //Parameters for the height and width of the container
            //storing the RegisterWidget
            height: 500,
            width: 250,
            child: RegisterWidget(),
            margin: EdgeInsets.all(6.0),
          ),
        )));
  }
}

//Creates the route to the previous page that the user visted
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SplashPage(),
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
