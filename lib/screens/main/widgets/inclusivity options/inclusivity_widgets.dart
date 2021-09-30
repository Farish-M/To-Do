import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/inclusivity%20options/font_size_change.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/inclusivity%20options/language_dropdown.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/inclusivity%20options/text_to_speech.dart';

//Statless widgets that contain all inclusivity options
class InclusivityOptions extends StatelessWidget {
  const InclusivityOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [LanguageDropDown(), TextToSpeech(), FontChange()],
    );
  }
}
