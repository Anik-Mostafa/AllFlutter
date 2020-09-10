import 'package:flutter/material.dart';
import 'package:flutter_app/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("This is it"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text("Sign In Anon"),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error sign in ');
            } else {
              print("Signed Id");
              print(result);
            }
          },
        ),
      ),
    );
  }
}
