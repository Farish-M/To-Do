import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/changeaccountdetailspage.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/account_details.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Account Details"),
        leading: new IconButton(
          //Navigates the user directly to the last visted page prior to entering page
          onPressed: () {
            Navigator.pop(context);
          },
          icon: new Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              //Navigates user to the new to-do page
              MaterialPageRoute(
                  builder: (context) => ChangeAccountDetailsPage()));
        },
      ),
      body: Align(alignment: Alignment(-0.90, -0.75), child: AccountDetails()),
    ));
  }
}
