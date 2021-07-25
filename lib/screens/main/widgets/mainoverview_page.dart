import 'package:flutter/widgets.dart';
import 'package:productivity_todolist_schedule/screens/main/views/blankpage.dart';
import 'package:productivity_todolist_schedule/screens/main/views/calendar.dart';
import 'package:productivity_todolist_schedule/screens/main/views/todolist.dart';

class UserController extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<UserController> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        ToDoList(),
        Calendar(),
        BlankPage(),
      ],
    );
  }
}
