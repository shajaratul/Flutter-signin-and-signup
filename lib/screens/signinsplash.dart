import 'package:flutter/material.dart';

class Signinsplash extends StatefulWidget {
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signinsplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  height: 220,
                  width: 220,
                  child: Image.asset('assets/jobaar_logo.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Global Referral Recruitment Marketplace",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4A90E2),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    color: Color(0xffE7F3FA),
                    textColor: Color(0xff4A90E2),
                    padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                    // splashColor: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      "Free Registration",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4A90E2),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}