import 'package:flutter/material.dart';

//class getInfo{
//  final list;
//  getInfo(this.list);
//
//
//
//
//}

class TeacherSortList extends StatefulWidget {
  final list;
  TeacherSortList(this.list, {Key key}) : super(key: key) {
//    getInfo(list);
  }
  getFinalInfo(String field) {
    List x = List();
    for (var i = 0; i < list.length; i++) {
      x.add(list[i][field]);
    }

    return x;
  }

  @override
  _TeacherSortListState createState() => _TeacherSortListState();
}

class _TeacherSortListState extends State<TeacherSortList> {
//  List getNum() {
//    List x = List();
//    for (var i = 0; i < widget.list.length; i++) {
//      x.add(widget.list[i]);
//    }
//    return x;
//  }
//  widget.xz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
          child: ListView.builder(
              itemCount: widget.list.length,
              itemBuilder: (context, i) {
                return Column(
                  children: <Widget>[
                    Text('ID :- ' + widget.getFinalInfo("ID")[i]),
                    Text('Name :- ' + widget.getFinalInfo("Name")[i]),
                    Text('Age :- ' + widget.getFinalInfo("Age")[i]),
                    Text('CQualification :- ' +
                        widget.getFinalInfo("Qualification")[i]),
                    Text('Department :- ' +
                        widget.getFinalInfo("Department")[i]),
                    Text('Gender :- ' + widget.getFinalInfo("Gender")[i]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                );
              })),
    );
  }
}
