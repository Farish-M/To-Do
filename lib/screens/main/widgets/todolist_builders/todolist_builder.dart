// Builder widget, should put this in a seperate file (in a widgets folder)
import 'package:flutter/material.dart';

class TodoListBuilder extends StatefulWidget {
  TodoListBuilder({Key? key}) : super(key: key);

  @override
  _TodoListBuilderState createState() => _TodoListBuilderState();
}

class _TodoListBuilderState extends State<TodoListBuilder> {
  //Instances of TodoItems
  List<TodoItem> todoList = [
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
    TodoItem(false, 1),
  ];

  //Create a function to take the boolean value and change it onChanged in CheckboxListTile
  void itemChange(bool val, int index) {
    setState(() {
      todoList[index].checked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleChildScrollView(
            child: CheckboxListTile(
          title: TextField(
            //Each parameter for the CheckboxListTile TextField
            autocorrect: true,
            cursorColor: Colors.black,
            enableSuggestions: true,
            maxLines: null,
            style: TextStyle(color: Colors.black),
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
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
          ),
          secondary: Text(
            "Insert Date",
            style: TextStyle(color: Colors.black),
          ),
          selectedTileColor: Colors.black,
          checkColor: Colors.white,
          activeColor: Colors.black,
          value: todoList[index].checked,
          onChanged: (bool? value) {
            //Run function
            itemChange(value!, index);
          },
          controlAffinity: ListTileControlAffinity.leading,
        ));
      },
    );
  }
}

//Object for your todoitem

class TodoItem {
  bool checked;
  int date;

  TodoItem(
    this.checked,
    this.date,
  );
}
