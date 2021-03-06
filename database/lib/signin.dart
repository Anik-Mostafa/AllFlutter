//import 'package:flutter/material.dart';
//
//import 'package:firebase_auth/firebase_auth.dart';
//
//import 'package:google_sign_in/google_sign_in.dart';
//
//import 'package:database/first_screen.dart';
//
//final FirebaseAuth _auth = FirebaseAuth.instance;
//final GoogleSignIn googleSignIn = GoogleSignIn();
//
//class Signin extends StatefulWidget {
//  @override
//  _SigninState createState() => _SigninState();
//}
//
//class _SigninState extends State<Signin> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        color: Colors.white,
//        child: Center(
//          child: Column(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              FlutterLogo(size: 150),
//              SizedBox(height: 50),
//              _signInButton(),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget _signInButton() {
//    return OutlineButton(
//      splashColor: Colors.grey,
//      onPressed: () {
//        signInWithGoogle().whenComplete(() {
//          Navigator.push(
//            context,
//            MaterialPageRoute(
//              builder: (context) {
//                return Sunflower();
//              },
//            ),
//          );
//        });
//      },
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
//      highlightElevation: 0,
//      borderSide: BorderSide(color: Colors.grey),
//      child: Padding(
//        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//        child: Row(
//          mainAxisSize: MainAxisSize.min,
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
//            Padding(
//              padding: const EdgeInsets.only(left: 10),
//              child: Text(
//                'Sign in with Google',
//                style: TextStyle(
//                  fontSize: 20,
//                  color: Colors.grey,
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//Future<String> signInWithGoogle() async {
//  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//  final GoogleSignInAuthentication googleSignInAuthentication =
//      await googleSignInAccount.authentication;
//
//  final AuthCredential credential = GoogleAuthProvider.getCredential(
//    accessToken: googleSignInAuthentication.accessToken,
//    idToken: googleSignInAuthentication.idToken,
//  );
//
//  final AuthResult authResult = await _auth.signInWithCredential(credential);
//  final FirebaseUser user = authResult.user;
//
//  assert(!user.isAnonymous);
//  assert(await user.getIdToken() != null);
//
//  final FirebaseUser currentUser = await _auth.currentUser();
//  assert(user.uid == currentUser.uid);
//
//  return 'signInWithGoogle succeeded: $user';
//}
//
//void signOutGoogle() async {
//  await googleSignIn.signOut();
//
//  print("User Sign Out");
//}
