import 'package:flutter/material.dart';
import 'package:university_data_app/university.dart';

class Update extends StatefulWidget {
  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  var title;
  String field;
  String x;
  String y;
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
          title: Text('Update info'),
          backgroundColor: Colors.black87,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (title == 'Teacher' || title == 'teacher') {
              updateData1(field, x, y);
            } else if (title == 'Student' || title == 'student') {
              updateData2(field, x, y);
            }
          },
          child: Icon(Icons.add, color: Colors.black, size: 30.0),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Form(
            child: Container(
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

//                          labelStyle: new TextStyle(color: Colors.white),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (value) {
                      x = value;
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
//              DropdownExample(name, id, department, qualification),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (value) {
                      field = value;
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
                      labelText: 'Name/ID/Qualificition/Department',
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                    ),
                  ),
//              DropdownExample(name, id, department, qualification),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (value) {
                      y = value;
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
                      labelText: 'Change ',
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                    ),
                  ),
//                  MaterialButton(
//                    onPressed: () {
//                      if (title == 'Teacher' || title == 'teacher') {
//                        updateData1(field, x, y);
//                      } else if (title == 'Student' || title == 'student') {
//                        updateData2(field, x, y);
//                      }
//                    },
//                    child: Center(child: Text('Check Me')),
//                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void updateData1(String field, String x, String y) {
  try {
    databaseReference.collection('Teacher').document(x).updateData({
      field: y,
    });
  } catch (e) {
    print(e.toString());
  }
}

void updateData2(String field, String x, String y) {
  try {
    databaseReference.collection('Student').document(x).updateData({
      field: y,
    });
  } catch (e) {
    print(e.toString());
  }
}
//
//class DropdownExample extends StatefulWidget {
//  DropdownExample(String name, var id, String department, String qualification);
//
//  @override
//  _DropdownExampleState createState() {
//    return _DropdownExampleState();
//  }
//}
//
//class _DropdownExampleState extends State<DropdownExample> {
//  String Newvalue;
//  String name;
//  var id;
//  String department;
//  String qualification;
//  @override
//  Widget build(BuildContext context) {
//    return DropdownButton<String>(
//      items: [
//        DropdownMenuItem<String>(
//          child: Text('Name'),
//          value: name,
//        ),
//        DropdownMenuItem<String>(
//          child: Text('ID'),
//          value: id,
//        ),
//        DropdownMenuItem<String>(
//          child: Text('Department'),
//          value: department,
//        ),
//        DropdownMenuItem<String>(
//          child: Text('Qualification'),
//          value: qualification,
//        ),
//      ],
//      onChanged: (String value) {
//        setState(() {
//          Newvalue = value;
//        });
//      },
//      hint: Text('Select'),
//      value: Newvalue,
//    );
//  }
//}
