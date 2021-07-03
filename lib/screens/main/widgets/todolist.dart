import 'package:flutter/material.dart';

class Todolist extends StatelessWidget {
  const Todolist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("words"), Text("more words"), Text("even more words")],
    );
  }
}
