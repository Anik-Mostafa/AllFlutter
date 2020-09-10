import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;

void main() => runApp(MaterialApp(
      home: Abc(),
    ));

class Abc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Create Record'),
        onPressed: () {
          createRecord();
        },
      ),
    );
  }
}

void createRecord() async {
  await databaseReference.collection("books").document("1").setData({
    'title': 'Mastering Flutter',
    'description': 'Programming Guide for Dart'
  });

//  DocumentReference ref = await databaseReference.collection("books").add({
//    'title': 'Flutter in Action',
//    'description': 'Complete Programming Guide to learn Flutter'
//  });
//  print(ref.documentID);
}
