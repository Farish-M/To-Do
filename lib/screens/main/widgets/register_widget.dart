import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:productivity_todolist_schedule/screens/main/views/mainoverview_page.dart';

//Widget that holds the function for the user to register to the app
class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Allows users to fill form to register
          TextFormField(
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
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
                  //Leads usesrs to the new to-do page when they "register"
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserController()));
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
