//import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//
//final databaseReference = Firestore.instance;
//
//void main() => runApp(MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: ThisApp(),
//    ));
//
//class ThisApp extends StatefulWidget {
//  @override
//  _ThisAppState createState() => _ThisAppState();
//}
//
//class _ThisAppState extends State<ThisApp> {
//  int counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Notification Badge"),
//        actions: <Widget>[
//          // Using Stack to show Notification Badge
//          new Stack(
//            children: <Widget>[
//              new IconButton(
//                  icon: Icon(Icons.notifications),
//                  onPressed: () {
//                    setState(() {
//                      counter = 0;
//                    });
//                  }),
//              counter != 0
//                  ? new Positioned(
//                      right: 11,
//                      top: 11,
//                      child: new Container(
//                        padding: EdgeInsets.all(2),
//                        decoration: new BoxDecoration(
//                          color: Colors.red,
//                          borderRadius: BorderRadius.circular(6),
//                        ),
//                        constraints: BoxConstraints(
//                          minWidth: 14,
//                          minHeight: 14,
//                        ),
//                        child: Text(
//                          '$counter',
//                          style: TextStyle(
//                            color: Colors.white,
//                            fontSize: 8,
//                          ),
//                          textAlign: TextAlign.center,
//                        ),
//                      ),
//                    )
//                  : new Container()
//            ],
//          ),
//        ],
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          print("Increment Counter");
//          setState(() {
//            counter++;
//            createRecord(counter);
//          });
//        },
//        child: Icon(Icons.add),
//      ),
//      body: RaisedButton(
//        child: Text('Create Record'),
//        onPressed: () {
////          createRecord();
//        },
//      ),
//    );
//  }
//
//  void createRecord(int counter) async {
//    await databaseReference.collection("books").document("1").setData({
//      'title': 'Mastering Flutter',
//      'description': 'Programming Guide for Dart'
//    });
//
//    DocumentReference ref = await databaseReference.collection("books").add({
//      'title': 'Flutter in Action',
//      'description': 'Complete Programming Guide to learn Flutter'
//    });
//    print(ref.documentID);
//  }
//}
import 'signin.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class anik extends StatefulWidget {
  @override
  _anikState createState() => _anikState();
}

class _anikState extends State<anik> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
