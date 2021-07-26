import 'dart:ui';

import 'package:flutter/material.dart';

class BlankPageWidget extends StatelessWidget {
  const BlankPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      //Holds the entire scrollable view of a blank page with a textfield
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              //Parameters of the text fields so there are no overflowing pixels
              //and so there is better quality to the program
              decoration: InputDecoration(
                hintText: "Insert Text",
              ),
              //Parameter for the blank page textfield
              scrollPadding: EdgeInsets.all(20.0),
              keyboardType: TextInputType.multiline,
              maxLines: 99999,
              selectionHeightStyle: BoxHeightStyle.includeLineSpacingBottom,
              autofocus: true,
              autocorrect: true,
              cursorColor: Colors.black,
              enableSuggestions: true,
              textCapitalization: TextCapitalization.sentences,
            )
          ],
        ),
      ),
    );
  }
}
