import 'package:flutter/material.dart';

class NewToDo extends StatefulWidget {
  NewToDo({Key? key}) : super(key: key);

  @override
  _NewToDoState createState() => _NewToDoState();
}

class _NewToDoState extends State<NewToDo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "New To-Do",
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(children: [
            //For the user to create a To-Do title
            Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Title",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  cursorColor: Colors.black,
                )),
            //Creates the option for users to add a description of a To-Do
            Container(
              padding: EdgeInsets.all(16),
              width: 500,
              child: TextField(
                maxLines: 25,
                decoration: InputDecoration(
                  hintText: "Description (Optional)",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
          ])),
    );
  }
}
