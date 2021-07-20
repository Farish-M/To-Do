import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/mainoverview_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Container(
          height: 250,
          width: 250,
          child: Column(
            children: [
              Text(
                'To-Do',
                style: TextStyle(
                  fontSize: 90,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  fixedSize: MaterialStateProperty.all<Size>(Size(200, 50)),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserController(),
                  ),
                ),
                child: Text(
                  'Enter',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(4.0),
        ),
      ),
    ));
  }
}
