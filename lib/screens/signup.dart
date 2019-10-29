import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    TextEditingController emailEditingContrller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/jobaar_logo.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Recruitment as a service",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Sign up to your account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailEditingContrller,
                    decoration: InputDecoration(
                      focusColor: Colors.blue,
                      labelText: "Email id",
                      // hintText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: emailEditingContrller,
                    decoration: InputDecoration(
                      labelText: "Password",
                      // hintText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.blue,
                            style: BorderStyle.solid),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  RaisedButton(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {},
                    color: Color(0xffE7F3FA),
                    textColor: Color(0xff4A90E2),
                    padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
                    // splashColor: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?", style: TextStyle(fontSize: 17,),),
                      FlatButton(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4A90E2),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/signin');
                        },
                      ),
                    ],
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