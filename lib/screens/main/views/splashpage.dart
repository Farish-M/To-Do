import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        'lib/assets/Google-flutter-logo.png',
        height: MediaQuery.of(context).size.height * 0.01,
      ),
    ));
  }
}
