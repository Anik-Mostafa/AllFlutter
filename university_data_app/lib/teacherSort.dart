import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university_data_app/sortList.dart';
import 'package:university_data_app/teacherSortList.dart';
import 'package:university_data_app/university.dart';

class TeacherSort extends StatefulWidget {
  var ak;

  TeacherSort(this.ak, {Key key}) : super(key: key);

  @override
  _TeacherSortState createState() => _TeacherSortState();
}

class _TeacherSortState extends State<TeacherSort> {
//  var y;
//  List<int> x = new List();

  String y;
  Map z;
  var zz;

  List getData() {
    List xxx = widget.ak;

    return xxx;
  }

  List getNum(String sortname) {
    List x = List();
    for (var i = 0; i < widget.ak.length; i++) {
      y = widget.ak[i][sortname].toString();
      if (1 == 1) {
        x.add(num.parse(y));
      }
    }
    return x;
  }

  List getSort(String sortname) {
//    print(xx[1]);
    List x = List();

    for (var i = 0; i < widget.ak.length; i++) {
      y = widget.ak[i][sortname].toString();
      if (x.length < widget.ak.length) {
        x.add(num.parse(y));
      }
    }
    List xx = x;
//    print(x.length);
    for (var j = 0; j < widget.ak.length; j++) {
      for (var k = 0; k < widget.ak.length - j - 1; k++) {
        if (x[k] > x[k + 1]) {
          zz = xx[k];
          xx[k] = xx[k + 1];
          xx[k + 1] = zz;
        }
      }
    }
    return xx;
  }

  List getMath(String sortname) {
    List xx = getData();

//    print(xx[1]);

    List xxx = getNum(sortname);
//    print(x.length);
    for (var j = 0; j < widget.ak.length; j++) {
      for (var k = 0; k < widget.ak.length - j - 1; k++) {
        if (xxx[k] > xxx[k + 1]) {
          z = xx[k];
          zz = xxx[k];
          xx[k] = xx[k + 1];
          xxx[k] = xxx[k + 1];
          xx[k + 1] = z;
          xxx[k + 1] = zz;
//          print("Ami Hossi");
        }
      }
    }

    return xx;
  }

  getName() {
    List nameSort = widget.ak;
    var change;

    for (var i = 0; i < nameSort.length; i++) {
      for (var j = 0; j < nameSort.length - i - 1; j++) {
        if (nameSort[j]["Name"][0].codeUnitAt(0) >
            nameSort[j + 1]["Name"][0].codeUnitAt(0)) {
          change = nameSort[j];
          nameSort[j] = nameSort[j + 1];
          nameSort[j + 1] = change;
        }
      }
    }
    print(nameSort);
    return nameSort;
  }

//
//  List getData2() {
//    List xxx = widget.ak;
//
//    return xxx;
//  }
//
//  List getNum2(String sortname) {
//    List x = List();
//    for (var i = 0; i < widget.ak.length; i++) {
//      y = widget.ak[i][sortname].toString();
//      if (1 == 1) {
//        x.add(num.parse(y));
//      }
//    }
//    return x;
//  }
//
//  List getSort2(String sortname) {
////    print(xx[1]);
//    List x = List();
//
//    for (var i = 0; i < widget.ak.length; i++) {
//      y = widget.ak[i][sortname].toString();
//      if (x.length < widget.ak.length) {
//        x.add(num.parse(y));
//      }
//    }
//    List xx = x;
////    print(x.length);
//    for (var j = 0; j < widget.ak.length; j++) {
//      for (var k = 0; k < widget.ak.length - j - 1; k++) {
//        if (x[k] > x[k + 1]) {
//          zz = xx[k];
//          xx[k] = xx[k + 1];
//          xx[k + 1] = zz;
//        }
//      }
//    }
//    return xx;
//  }
//
//  List getMath2(String sortname) {
//    List xx = getData();
//
////    print(xx[1]);
//
//    List xxx = getNum2(sortname);
////    print(x.length);
//    for (var j = 0; j < widget.ak.length; j++) {
//      for (var k = 0; k < widget.ak.length - j - 1; k++) {
//        if (xxx[k] > xxx[k + 1]) {
//          z = xx[k];
//          zz = xxx[k];
//          xx[k] = xx[k + 1];
//          xxx[k] = xxx[k + 1];
//          xx[k + 1] = z;
//          xxx[k + 1] = zz;
////          print("Ami Hossi");
//        }
//      }
//    }
//
//    return xx;
//  }

//  var ak;

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
          title: Text('Sort Info'),
          backgroundColor: Colors.black87,
        ),
        body: SafeArea(
          child: Form(
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
//                TextField(
//                  onChanged: (value) {
//                    y = value;
//                    print(y);
//                  },
//                ),
                    MaterialButton(
                      onPressed: () {
//                        print(getSort2('Name'));
//                        print(getMath2('Name'));
//
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TeacherSortList(getName())));
//                    y = widget.ak[2]['Age'].toString();
//
////                    z = int.parse(y);
//
//                    print(z);
//                    print(z + 2);
                      },
                      child: Text('Sort by Name',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                    MaterialButton(
                      onPressed: () async {
                        print(getSort('ID'));
                        print(getMath('ID'));

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TeacherSortList(getMath('ID'))));
//                    for (var i = 0; i < widget.ak.length; i++) {
//                      y = widget.ak[i]['Age'].toString();
//                      x[i].toString();
//                      for (var j = 0; j < widget.ak.length; j++) {
//                        z = int.parse(y);
//////                      int r = 0;
//                        if (x[i] == z) {
//                          print(widget.ak[j]);
//////                        r++;
//                        }
//                      }
//                    }
//                    print(x);

//                      x = int.parse(widget.ak[i]['Age']);
//                      print(x);
//                      print(x);

//                      for (var j = 0; j < widget.ak.length; j++) {
//                        if (widget.ak[j]['Age'] > widget.ak[j + 1]['Age']) {
//                          x = widget.ak[j]['Age'];
//                          widget.ak[j]['Age'] = widget.ak[j + 1]['Age'];
//                          widget.ak[j + 1]['Age'] = x;
//                          print(widget.ak[j]);
//                        }

//                  await print(widget.ak);
//                  await Future.delayed(Duration(seconds: 10));
//                  await print(widget.ak);
                      },
                      child: Text(
                        'Sort by ID',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        print(getSort('Age'));
                        print(getMath('Age'));

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TeacherSortList(getMath('Age'))));
//                    y = widget.ak[2]['Age'].toString();
//
////                    z = int.parse(y);
//
//                    print(z);
//                    print(z + 2);
                      },
                      child: Text('Sort by Age',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
//                    MaterialButton(
//                      onPressed: () {
//                        print(getSort('CGP'));
//                        print(getMath('CGP'));
//
//                        Navigator.push(
//                            context,
//                            new MaterialPageRoute(
//                                builder: (BuildContext context) =>
//                                    SortList(getMath('CGP'))));
////                    y = widget.ak[2]['Age'].toString();
////
//////                    z = int.parse(y);
////
////                    print(z);
////                    print(z + 2);
//                      },
//                      child: Text('Sort by CGP',
//                          style: TextStyle(color: Colors.white, fontSize: 18)),
//                    ),

//                RaisedButton(
//                  onPressed: () {
//                    for (var i = 0; i < widget.ak.length; i++) {
//                      x = widget.ak[i]['Department'];
////                      print(x);
////                      print(y);
//                      if (x == y) {
//                        print(widget.ak[i]);
//                      } else {
//                        print('NO Value');
//                      }
//                    }
//                  },
//                  child: Text('Sort by Department'),
//                ),
//                RaisedButton(
//                  onPressed: () {
//                    for (var i = 0; i < widget.ak.length; i++) {
//                      x = widget.ak[i]['Gander'];
////                      print(x);
////                      print(y);
//                      if (x == y) {
//                        print(widget.ak[i]);
//                      }
//                    }
//                  },
//                  child: Text('Sort by Gender'),
//                ),
//                RaisedButton(
//                  onPressed: () {
//                    for (var i = 0; i < widget.ak.length; i++) {
//                      x = widget.ak[i]['CGP'];
////                      print(x);
////                      print(y);
//                      if (x == y) {
//                        print(widget.ak[i]);
//                      }
//                    }
//                  },
//                  child: Text('Sort by Qu/CGP'),
//                ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
