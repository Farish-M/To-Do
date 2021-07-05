//The stateful widget for the checkbox for the to-do list
//The entire function of the checkbox

import 'package:flutter/material.dart';

class ToDoListCheckBox extends StatefulWidget {
  const ToDoListCheckBox({Key? key}) : super(key: key);

  @override
  State<ToDoListCheckBox> createState() => CheckBox();
}

//A private class for the ToDoListCheckBox function.
class CheckBox extends State<ToDoListCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      //Creates a textfield for the user
      title: TextField(),
      tileColor: Color.fromARGB(35, 0, 0, 0),
      //Colors the check in the checkbox white
      checkColor: Colors.white,
      //Fills the remaining color of the checkbox once checked
      activeColor: Colors.black,
      //Determines whether the box is checked
      value: isChecked,
      onChanged: (bool? value) {
        //Changes the boolean value of the checkbox
        setState(
          () {
            isChecked = value!;
          },
        );
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
