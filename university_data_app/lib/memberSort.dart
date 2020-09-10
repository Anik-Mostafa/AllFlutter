import 'package:flutter/material.dart';
import 'package:university_data_app/sort.dart';
import 'package:university_data_app/teacherSort.dart';

class MemberSort extends StatelessWidget {
  var student;
  var teacher;
  MemberSort(this.student, this.teacher, {Key key}) : super(key: key);

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
          title: Text(''),
          backgroundColor: Colors.black87,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black87.withOpacity(0.6),
          ),
          height: size.height,
          width: size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text('Teacher',
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  onPressed: () {
                    print(teacher);

                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TeacherSort(teacher)));
                  },
                ),
                MaterialButton(
                  child: Text('Student',
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => Sort(student)));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
