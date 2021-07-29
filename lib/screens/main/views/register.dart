import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/register_widget.dart';

//Page that holds register widget for users to register
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome!"),
        ),
        body: Container(
            child: Center(
          child: Container(
            //Parameters for the height and width of the container
            //storing the SplashPageWidget
            height: 500,
            width: 250,
            child: RegisterWidget(),
            margin: EdgeInsets.all(6.0),
          ),
        )));
  }
}
