import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/loginpage.dart';
import 'package:productivity_todolist_schedule/screens/main/views/splashpage.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  ToDo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            //If the user is connecting to the app, it will load the splash page
            return MaterialApp(home: SplashPage());
          } else {
            //Once the loading is done it'll load to the login page
            return MaterialApp(home: LoginPage());
          }
        });
  }
}
