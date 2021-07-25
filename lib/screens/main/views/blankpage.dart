import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/blankpagewidget.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Blank Page",
            ),
            elevation: 0,
          ),
          body: Container(
            //Implements the widget for the blank page's functionality
            child: BlankPageWidget(),
          ),
          //Resizes the bottom of the page so there isn't issues with
          //overflowing pixels when dimensions change
          resizeToAvoidBottomInset: true,
        ));
  }
}
