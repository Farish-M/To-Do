import 'dart:ui';

import 'package:flutter/material.dart';

class BlankPageWidget extends StatelessWidget {
  const BlankPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Insert Text",
              ),
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
