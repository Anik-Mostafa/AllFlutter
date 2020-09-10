import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shapla/pages/Screen4.dart';
import 'package:shapla/pages/screen2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var id;

  var name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Scaffold(
//        appBar: AppBar(
//          title: Text("Screen 3"),
//          backgroundColor: Colors.pink[200],

//        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: FloatingActionButton(
            child: Icon(Icons.arrow_back, size: 20),
            backgroundColor: Colors.pink[200],
            onPressed: () {
              Navigator.pop(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => Screen2()));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//        floatingActionButton: FloatingActionButton(
//            child: Icon(Icons.arrow_back, size: 20),
//            backgroundColor: Colors.pink[200],
//            onPressed: () {
//              Navigator.pop(
//                  context,
//                  new MaterialPageRoute(
//                      builder: (BuildContext context) => Screen2()));
//            }),
        body: Container(
          color: Colors.white,
          child: Form(
            child: ListView(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/icon.jpg',
                  height: 200,
                ),
                Center(
                  child: Text(
                    "Note: The app requires internet connection",
                    style: TextStyle(fontSize: 12, fontFamily: 'Spartan'),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
//                test
                new Theme(
                  data: new ThemeData(
                    primaryColor: Colors.pinkAccent[200],
                    primaryColorDark: Colors.pink[200],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child: TextField(
//                          style: TextStyle(color: Colors.pink[200]),
                          onChanged: (v) {
                            name = v;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.pink,
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: new OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: new BorderRadius.circular(25.0),
                            ),
                            fillColor: Colors.pink[200],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child: TextField(
//                          style: TextStyle(color: Colors.pink[200]),
                          onChanged: (v) {
                            id = v;
                          },
                          decoration: InputDecoration(
                            labelText: 'ID',
                            prefixIcon: const Icon(
                              Icons.perm_contact_calendar,
                              color: Colors.pink,
                            ),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: new OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1),
                              borderRadius: new BorderRadius.circular(25.0),
                            ),
                            fillColor: Colors.pink[200],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      RaisedButton(
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.pink[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
//                  side: BorderSide(color: Colors.red),
                        ),
                        onPressed: () async {
                          var x = 0;
                          var documentid;
                          var quantity2;

                          await databaseReference
                              .collection("student")
                              .getDocuments()
                              .then((QuerySnapshot snapshot) {
                            snapshot.documents.forEach((f) {
                              if (f.data['name'] == name &&
                                  f.data['id'] == id) {
                                documentid = f.documentID;
                                quantity2 = f.data['quantity'];
                                print(f.data['quantity']);
                                x++;
                              }
                            });
                            if (x == 0) {
                              AlertDialog alert = AlertDialog(
                                content: Text("Invalid Name or ID"),
                                actions: [],
                              );

                              // show the dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                },
                              );
                            }
                          });
                          quantity2 = int.parse(quantity2);
                          print("That is X");
                          print(x);

                          if (x != 0) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Screen4(documentid, quantity2)));
                          }
                        },
                      ),
                    ],
                  ),
                ),

//                child: new TextField(
//                  decoration: new InputDecoration(
//                      border: new OutlineInputBorder(
//                          borderSide: new BorderSide(color: Colors.teal)),
//                      hintText: 'Tell us about yourself',
//                      helperText: 'Keep it short, this is just a demo.',
//                      labelText: 'Life story',
//                      prefixIcon: const Icon(
//                        Icons.person,
//                        color: Colors.green,
//                      ),
//                      prefixText: ' ',
//                      suffixText: 'USD',
//                      suffixStyle: const TextStyle(color: Colors.green)),
//                ),

//                test
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
//
//import 'package:flutter/material.dart';
//import 'package:flutter_login/flutter_login.dart';
//import 'package:shapla/pages/Screen4.dart';
//
//const users = const {
//  'dribbble@gmail.com': '12345',
//  'hunter@gmail.com': 'hunter',
//};
//
//class Screen3 extends StatelessWidget {
//  Duration get loginTime => Duration(milliseconds: 2250);
//
//  Future<String> _authUser(LoginData data) {
//    print('Name: ${data.name}, Password: ${data.password}');
//    return Future.delayed(loginTime).then((_) {
//      if (!users.containsKey(data.name)) {
//        return 'Username not exists';
//      }
//      if (users[data.name] != data.password) {
//        return 'Password does not match';
//      }
//      return null;
//    });
//  }
//
//  Future<String> _recoverPassword(String name) {
//    print('Name: $name');
//    return Future.delayed(loginTime).then((_) {
//      if (!users.containsKey(name)) {
//        return 'Username not exists';
//      }
//      return null;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return FlutterLogin(
//      title: 'ECORP',
//      logo: 'images/icon.jpg',
//      onLogin: _authUser,
//      onSignup: _authUser,
//      onSubmitAnimationCompleted: () {
//        Navigator.of(context).pushReplacement(MaterialPageRoute(
//          builder: (context) => Screen4(),
//        ));
//      },
//      onRecoverPassword: _recoverPassword,
//    );
//  }
//}
