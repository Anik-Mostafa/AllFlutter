import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  //Sign In Anonim

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  //Sign In with email and password

  //Register with email and password

  //Sign Out

}
