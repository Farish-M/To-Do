import 'package:flutter/material.dart';

//Prototype button that will allow user to activate diction mode
class TextToSpeech extends StatelessWidget {
  const TextToSpeech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.campaign),
      elevation: 0,
      mini: true,
    );
  }
}
