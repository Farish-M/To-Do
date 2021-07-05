//The stateful widget for the checkbox for the to-do list
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
      title: Text("To-Do Item 1"),
      tileColor: Color.fromARGB(35, 0, 0, 0),
      //Colors the check in the checkbox white
      checkColor: Colors.white,
      //Fills the remaining color of the box in getColor
      activeColor: Colors.black,
      value: isChecked,
      onChanged: (bool? value) {
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
