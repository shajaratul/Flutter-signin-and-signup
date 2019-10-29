import 'package:flutter/material.dart';
import 'package:signin/screens/signin.dart';
import 'package:signin/screens/signinsplash.dart';
import 'package:signin/screens/signup.dart';

void main() => runApp(Jobaar());

class Jobaar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signinsplash(),
      initialRoute: '/',
      routes: {
        '/signin': (context) => Signin(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
