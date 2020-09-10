import 'package:flutter/material.dart';
import 'package:university_data_app/Search.dart';
import 'package:university_data_app/delete.dart';
import 'package:university_data_app/member.dart';
import 'package:university_data_app/memberSort.dart';
import 'package:university_data_app/sign_in.dart';
import 'package:university_data_app/sort.dart';
import 'package:university_data_app/university.dart';
import 'package:university_data_app/update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

final databaseReference = Firestore.instance;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    ));

class Home extends StatelessWidget {
//  var ak = getData2();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ABC University'),
        backgroundColor: Colors.black87,
      ),

//      drawer: Drawer(
//        child: ListView(
//          // Important: Remove any padding from the ListView.
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            DrawerHeader(
//              child: Text('Drawer Header'),
//              decoration: BoxDecoration(
//                color: Colors.black87,
//              ),
//            ),
//            ListTile(
//              title: Text('Add Info'),
//              onTap: () {
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
//                        builder: (BuildContext context) => University()));
//              },
//            ),
//            ListTile(
//              title: Text('Update Info'),
//              onTap: () {
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
//                        builder: (BuildContext context) => Update()));
//              },
//            ),
//            ListTile(
//              title: Text('Delete Info'),
//              onTap: () {
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
//                        builder: (BuildContext context) => DeleteInfo()));
//              },
//            ),
//            ListTile(
//                title: Text('Sort Info'),
//                onTap: () async {
//                  var x = await getData2();
//                  Navigator.push(
//                      context,
//                      new MaterialPageRoute(
//                          builder: (BuildContext context) => Sort(x)));
//                }),
//            ListTile(
//              title: Text('Search Info'),
//              onTap: () async {
//                var x = await getData2();
//                Navigator.push(
//                    context,
//                    new MaterialPageRoute(
//                        builder: (BuildContext context) => Search(x)));
//              },
//            ),
//          ],
//        ), // Populate the Drawer in the next step.
//      ),
      body: ListView(
        children: <Widget>[
          Stack(children: <Widget>[
            Center(
              child: Image.asset(
                'images/back2.jpg',
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.6),
                ),
                height: size.height,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
//                    color: Colors.white,
                        child: Text(
                          'Add Info',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      University()));
                        }),
                    MaterialButton(
                        child: Text(
                          'Delete Info',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DeleteInfo()));
                        }),
                    MaterialButton(
                        child: Text(
                          'Update Info',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => Update()));
                        }),
                    MaterialButton(
                      child: Text(
                        'Search Info',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () async {
                        var x = await getData2();
                        var y = await getData1();
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Member(x, y)));
                      },
                    ),
                    MaterialButton(
                        child: Text(
                          'Sort Info',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () async {
                          var x = await getData2();
                          var y = await getData1();
//                          print(x);
//                          print(y);
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MemberSort(x, y)));
                        }),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

Future<List> getData2() async {
  var ak = [];
  await databaseReference
      .collection("Student")
      .getDocuments()
      .then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) {
      if (f.data != null) {
        ak.add(f.data['anik']);
      }
      ak.add(f.data);
    });
  });

//  print(x[3]['Name']);

  return ak;
}

Future<List> getData1() async {
  var ak = [];
  await databaseReference
      .collection("Teacher")
      .getDocuments()
      .then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) => ak.add(f.data));
  });

//  print(x[3]['Name']);

  return ak;
}
