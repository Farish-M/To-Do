import 'package:flutter/material.dart';

//Widget for the user create new to-do items
class NewToDo extends StatefulWidget {
  NewToDo({Key? key}) : super(key: key);

  @override
  _NewToDoState createState() => _NewToDoState();
}

class _NewToDoState extends State<NewToDo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(children: [
        //For the user to create a To-Do title
        Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            width: 500,
            child: TextField(
                decoration: InputDecoration(
              hintText: "Title",
            ))),
        //Creates the option for users to add a description of a To-Do
        Container(
          padding: EdgeInsets.all(16),
          width: 500,
          child: TextField(
              maxLines: 25,
              decoration: InputDecoration(
                hintText: "Description (Optional)",
              )),
        ),
      ])),
    ));
  }
}
