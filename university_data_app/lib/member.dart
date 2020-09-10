import 'package:flutter/material.dart';
import 'package:university_data_app/Search.dart';

class Member extends StatelessWidget {
  var student;
  var teacher;
  Member(this.student, this.teacher, {Key key}) : super(key: key);

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
        body: Center(
          child: Container(
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
//                      Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (BuildContext context) =>
//                                  Search(teacher)));
                    },
                  ),
                  MaterialButton(
                    child: Text('Student',
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                    onPressed: () {
//                      Navigator.push(
//                          context,
//                          new MaterialPageRoute(
//                              builder: (BuildContext context) =>
//                                  Search(student)));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
