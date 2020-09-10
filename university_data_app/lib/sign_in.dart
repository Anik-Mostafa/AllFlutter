import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    String _email, _password;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please type  a email';
                    }
                    return null;
                  },
                  onSaved: (input) => _email = input,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  validator: (input) {
                    if (input.length < 6) {
                      return 'Your password needs 6 more charecter';
                    }
                    return null;
                  },
                  onSaved: (input) => _email = input,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                RaisedButton(child: Text("Submit"), onPressed: () {}),
              ],
            )),
      ),
    );
  }

  void signInFunction() {
    final FormState = _formKey.currentState;
  }
}
