import 'dart:ui';

import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(
              "Blank Page",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Center(
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
                    selectionHeightStyle:
                        BoxHeightStyle.includeLineSpacingBottom,
                    autofocus: true,
                    autocorrect: true,
                    cursorColor: Colors.black,
                    enableSuggestions: true,
                    style: TextStyle(color: Colors.black),
                    textCapitalization: TextCapitalization.sentences,
                  )
                ],
              ),
            ),
          ),
          resizeToAvoidBottomInset: true,
        ));
  }
}
