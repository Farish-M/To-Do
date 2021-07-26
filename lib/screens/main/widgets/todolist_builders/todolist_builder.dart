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
    TodoItem(false, 2),
    TodoItem(false, 3),
  ];

  //Create a function to take the boolean value and change it onChanged in CheckboxListTile
  void itemChange(bool val, int index) {
    setState(() {
      todoList[index].checked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Creates a listview of to-do list items
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (BuildContext context, int index) {
        return SingleChildScrollView(
            child: CheckboxListTile(
          title: TextField(
            //Each parameter for the CheckboxListTile TextField
            autocorrect: true,
            enableSuggestions: true,
            maxLines: null,
            textCapitalization: TextCapitalization.sentences,
          ),
          //Displays the ranking of the to-do item on the right
          //and the checkbox on the left
          secondary: Text((todoList[index].rank).toString()),
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
  int rank;

  TodoItem(
    this.checked,
    this.rank,
  );
}
