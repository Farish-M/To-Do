import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/register.dart';
import 'package:productivity_todolist_schedule/screens/main/views/mainoverview_page.dart';

//The widget that is incharge of the; "To-Do" title; login and password forms; and login button.
class LoginPageWidget extends StatelessWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'To-Do',
            style: TextStyle(
              fontSize: 90,
            ),
          ),
          //Column widget that is incharge of the login and password forms
          Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Username',
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Password',
                ),
              ),
            ],
          ),
          //Login button for the user to open the app
          Container(
            height: 50,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //Alters the size of the button is it fits and no
                    //overflowing of pixels
                    fixedSize: MaterialStateProperty.all<Size>(Size(175, 40)),
                  ),
                  //Once the button is pressed navigates the user to the
                  //main overview page with the to-do list, calendar and blank page
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserController()));
                  },
                  child: Text(
                    'Login',
                  ),
                )),
          ),
          Container(
            height: 50,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //Alters the size of the button is it fits and no
                    //overflowing of pixels
                    fixedSize: MaterialStateProperty.all<Size>(Size(175, 40)),
                  ),
                  //Once the button is pressed navigates the user to the
                  //main overview page with the to-do list, calendar and blank page
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    'Register',
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
