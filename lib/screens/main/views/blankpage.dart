import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/accountpage.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/blankpagewidget.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: const Icon(Icons.account_circle),
          color: Colors.white,
          //Navigates the user to the last visted page, in this context the splashpage
          onPressed: () {
            Navigator.push(
                context,
                //Navigates user to the new to-do page had to hard code direction
                //due to issues with pressing the back button and returning to the new to-do page
                MaterialPageRoute(builder: (context) => AccountPage()));
          },
        ),
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
