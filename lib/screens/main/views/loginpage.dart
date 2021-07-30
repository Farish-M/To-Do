import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/loginpage_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Container(
          //Parameters for the height and width of the container
          //storing the SplashPageWidget
          height: 500,
          width: 250,
          child: LoginPageWidget(),
          margin: EdgeInsets.all(6.0),
        ),
      ),
    ));
  }
}
