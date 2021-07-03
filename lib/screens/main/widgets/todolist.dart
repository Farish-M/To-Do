import 'dart:html';

import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("To Do List"),
              backgroundColor: Colors.black,
            ),
            body: Column(
              children: [ToDoListCheckBox()],
            )));
  }
}

//The stateful widget for the checkbox for the to-do list
class ToDoListCheckBox extends StatefulWidget {
  const ToDoListCheckBox({Key? key}) : super(key: key);

  @override
  State<ToDoListCheckBox> createState() => CheckBox();
}

//A private class that goes with the ToDoListCheckBox function.
class CheckBox extends State<ToDoListCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    //Stores the each state that the checkbox can be
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        //State of the checkbox when it is pressed
        MaterialState.pressed,
        //State of the checkbox when it is hovered over
        MaterialState.hovered,
      };
      //Sees if the checkbox is under any of the states and places the color as black
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      //Colors the outline of the box black
      return Colors.black;
    }

    return Checkbox(
      //Colors the check in the checkbox white
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
