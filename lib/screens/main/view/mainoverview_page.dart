import 'package:flutter/widgets.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/schedule.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/todolist.dart';

class PlayerController extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PlayerController> {
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
        Schedule(),
        // MyPage3Widget(),
      ],
    );
  }
}
