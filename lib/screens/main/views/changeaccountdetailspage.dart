import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/mainoverview_page.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/form_validation.dart';

class ChangeAccountDetailsPage extends StatelessWidget {
  const ChangeAccountDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Account Details"),
        actions: <Widget>[
          //Home button in the top right that allows user to navigate to the to-do page
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      //Navigates user to the to-do page
                      MaterialPageRoute(
                          builder: (context) => UserController()));
                },
                child: Icon(Icons.home),
              )),
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 500,
          //Scaffold that holds validation form
          child: Scaffold(
            body: ValidationForm(),
          ),
        ),
      ),
    );
  }
}
