import 'package:flutter/material.dart';

//Statless widget that just contains a prototype button that will allow users to increase font size
class FontChange extends StatelessWidget {
  const FontChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.format_size),
      elevation: 0,
      mini: true,
    );
  }
}
