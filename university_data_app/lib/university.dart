import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:university_data_app/Search.dart';
import 'package:university_data_app/main.dart';
import 'package:university_data_app/sort.dart';
import 'package:university_data_app/student.dart';
import 'package:university_data_app/teacher.dart';

final databaseReference = Firestore.instance;

class University extends StatefulWidget {
  @override
  _UniversityState createState() => _UniversityState();
}

class _UniversityState extends State<University> {
  var title;
  String name;
  var id;
  String department;
  String qualification;
  String gender;
  String age;
//  var ak = getData2();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back2.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Add info'),
          backgroundColor: Colors.black87,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (title == 'Teacher' || title == 'teacher') {
              var x = Student(name, id, department, qualification, gender, age);
              print(x.studentInfo());
              createRecord2(name, id, department, qualification, gender, age);
            } else if (title == 'Student' || title == 'student') {
              var y = Teacher(name, id, department, qualification, gender, age);

              print(y.teacherInfo());
              createRecord1(name, id, department, qualification, gender, age);
            }
//            Navigator.pop(
//                context,
//                new MaterialPageRoute(
//                    builder: (BuildContext context) => Home()));
          },
          child: Icon(Icons.add, color: Colors.black, size: 30.0),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Form(
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.6),
                  ),
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          title = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'Title',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          name = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          id = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'ID',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          age = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'Age',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          department = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'Department',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          qualification = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'CGP/Qualification',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          gender = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          labelText: 'Gender',
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                        ),
                      ),
//                      MaterialButton(
//                        onPressed: () {
//                          if (title == 'Teacher' || title == 'teacher') {
//                            var x = Student(name, id, department, qualification,
//                                gender, age);
//                            print(x.studentInfo());
//                            createRecord2(name, id, department, qualification,
//                                gender, age);
//                          } else if (title == 'Student' || title == 'student') {
//                            var y = Teacher(name, id, department, qualification,
//                                gender, age);
//
//                            print(y.teacherInfo());
//                            createRecord1(name, id, department, qualification,
//                                gender, age);
//                          }
//                          Navigator.pop(
//                              context,
//                              new MaterialPageRoute(
//                                  builder: (BuildContext context) => Home()));
//                        },
//                        child: Center(
//                            child: Text(
//                          'Check Me',
//                          style: TextStyle(color: Colors.white),
//                        )),
//                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UniversityMember {
  String name;
  var id;
  String department;
  String qualification;
  String gender;
  String cgp;
  String age;

  UniversityMember(this.name, this.id, this.department, this.gender, this.age);
}

void createRecord1(
  String name,
  var id,
  String department,
  String qualification,
  String gender,
  String age,
) async {
  DocumentReference ref = await databaseReference.collection('Student').add({
    'Name': name,
    'ID': id,
    'Department': department,
    'Gender': gender,
    'CGP': qualification,
    'Age': age,
  });

  print(ref.documentID);
}

void createRecord2(
  String name,
  var id,
  String department,
  String qualification,
  String gender,
  String age,
) async {
  DocumentReference ref = await databaseReference.collection('Teacher').add({
    'Name': name,
    'ID': id,
    'Department': department,
    'Gender': gender,
    'Qualification': qualification,
    'Age': age,
  });
  print(ref.documentID);
}
//
//void getData1() {
//  var x=
//  databaseReference
//      .collection("Teacher")
//      .getDocuments()
////      .then((QuerySnapshot snapshot) {
////    snapshot.documents.forEach((f) => print('${f.data}}'));
//.then()
//
//  });
//}

//Future<List> getData2() async {
//  var ak = [];
//  await databaseReference
//      .collection("Student")
//      .getDocuments()
//      .then((QuerySnapshot snapshot) {
//    snapshot.documents.forEach((f) => ak.add(f.data));
//  });
//
////  print(x[3]['Name']);
//
//  return ak;
//}
