import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/form_validation.dart';

class ChangeAccountDetailsPage extends StatelessWidget {
  const ChangeAccountDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Account Details"),
      ),
      body: SizedBox(
        width: 500,
        child: Scaffold(
          body: ValidationForm(),
        ),
      ),
    );
  }
}
