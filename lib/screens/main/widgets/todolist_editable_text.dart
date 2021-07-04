import 'package:flutter/material.dart';

class ToDoListEditableText extends StatefulWidget {
  const ToDoListEditableText({Key? key}) : super(key: key);

  @override
  State<ToDoListEditableText> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with ToDoListEditableText.
class _MyStatefulWidgetState extends State<ToDoListEditableText> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
