import 'package:flutter/material.dart';
import 'package:university_data_app/university.dart';

class DeleteInfo extends StatefulWidget {
  @override
  _DeleteInfoState createState() => _DeleteInfoState();
}

class _DeleteInfoState extends State<DeleteInfo> {
  var title;

  String x;

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
          title: Text('Delete info'),
          backgroundColor: Colors.black87,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (title == 'Teacher' || title == 'teacher') {
              deleteData1(x);
            } else if (title == 'Student' || title == 'student') {
              deleteData2(x);
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
                      fillColor: Colors.white,

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
                      labelText: 'Main ID',
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.white,

//                          labelStyle: new TextStyle(color: Colors.white),
                    ),
                  ),
//                  MaterialButton(
//                    onPressed: () {
//                      if (title == 'Teacher' || title == 'teacher') {
//                        deleteData1(x);
//                      } else if (title == 'Student' || title == 'student') {
//                        deleteData2(x);
//                      }
//                    },
//                    child: Center(child: Text('Click ')),
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

void deleteData1(String x) {
  databaseReference.collection('Teacher').document(x).delete();
}

void deleteData2(String x) {
  databaseReference.collection('Student').document(x).delete();
}
