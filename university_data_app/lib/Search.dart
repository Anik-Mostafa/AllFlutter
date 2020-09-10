//import 'package:flutter/material.dart';
//import 'package:university_data_app/university.dart';
//
//
//
//
//class Search extends StatefulWidget {
//  var ak;
//
//  Search(this.ak, {Key key}) : super(key: key);
//
//  @override
//  _SearchState createState() => _SearchState();
//}
//
//class _SearchState extends State<Search> {
//  Future<List> searchResult ;
////  List searchResultoo;
//  String y;
//  var x;
////  var ak;
//
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//
//    return Container(
//      decoration: BoxDecoration(
//          image: DecorationImage(
//              image: AssetImage("images/back2.jpg"), fit: BoxFit.cover)),
//      child: Scaffold(
//        backgroundColor: Colors.transparent,
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text(''),
//          backgroundColor: Colors.black87,
//        ),
//        body: ListView(
//          children: <Widget>[
//            Form(
//              child: Container(
//                decoration: BoxDecoration(
//                  color: Colors.black87.withOpacity(0.6),
//                ),
//                height: size.height,
//                width: size.width,
//                child: ListView(
////                crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    SizedBox(
//                      height: 20,
//                    ),
//                    TextField(
//                      style: TextStyle(color: Colors.white),
//                      onChanged: (value) {
//                        y = value;
////                      print(y);
//                      },
//                      decoration: InputDecoration(
//                        border: OutlineInputBorder(
//                          borderSide: BorderSide(
//                            color: Colors.teal,
//                          ),
//                        ),
//                        prefixIcon: const Icon(
//                          Icons.search,
//                          color: Colors.white,
//                        ),
//                        labelText: 'Search',
//                        labelStyle:
//                            TextStyle(color: Colors.white, fontSize: 18),
//
////                          labelStyle: new TextStyle(color: Colors.white),
//                      ),
//                    ),
//                    MaterialButton(
//                      onPressed: () async {
//                        for (var i = 0; i < widget.ak.length; i++) {
//                          if (widget.ak[i]['Name'] == y ||
//                              widget.ak[i]['Department'] == y ||
//                              widget.ak[i]['Age'] == y ||
//                              widget.ak[i]['CGP'] == y ||
//                              widget.ak[i]['Name'][0] == y ||
//                              widget.ak[i]['Department'][0] == y ||
//                              widget.ak[i]['Age'][0] == y ||
//                              widget.ak[i]['CGP'][0] == y)
//                            setState(() {
//                              searchResult=widget.ak[i];
////                              listSolution(searchResult);
////                              searchResult=searchResultoo;
//                            });
//                          Future<List> getProjectDetails(){
//                            return searchResult;
//                          }
//
//                        }
//
////                  await print(widget.ak);
////                  await Future.delayed(Duration(seconds: 10));
////                  await print(widget.ak);
//                      },
//                      child: Text('Search',
//                          style: TextStyle(color: Colors.white, fontSize: 18)),
//                    ),
////                  MaterialButton(
////                    onPressed: () {
////                      for (var i = 0; i < widget.ak.length; i++) {
////                        x = widget.ak[i]['Department'];
//////                      print(x);
//////                      print(y);
////                        if (x == y) {
////                          print(widget.ak[i]);
////                        } else {
////                          print('NO Value');
////                        }
////                      }
////                    },
////                    child: Text('Search by Department',
////                        style: TextStyle(color: Colors.white, fontSize: 18)),
////                  ),
////                  MaterialButton(
////                    onPressed: () {
////                      for (var i = 0; i < widget.ak.length; i++) {
////                        x = widget.ak[i]['Age'];
//////                      print(x);
//////                      print(y);
////                        if (x == y) {
////                          print(widget.ak[i]);
////                        }
////                      }
////                    },
////                    child: Text('Search by Age',
////                        style: TextStyle(color: Colors.white, fontSize: 18)),
////                  ),
////                  MaterialButton(
////                    onPressed: () {
////                      for (var i = 0; i < widget.ak.length; i++) {
////                        x = widget.ak[i]['CGP'];
//////                      print(x);
//////                      print(y);
////                        if (x == y) {
////                          print(widget.ak[i]);
////                        }
////                      }
////                    },
////                    child: Text(
////                      'Search by Qu/CGP',
////                      style: TextStyle(color: Colors.white, fontSize: 18),
////                    ),
////                  ),
//                    Container(),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
//Widget projectWidget() {
//  return FutureBuilder(
//    builder: (context, projectSnap) {
//      if (projectSnap.connectionState == ConnectionState.none &&
//          projectSnap.hasData == null) {
//        //print('project snapshot data is: ${projectSnap.data}');
//        return Container(
//          child: Text("No Match Found");
//        );
//      }
//      return ListView.builder(
//        itemCount: projectSnap.data.length,
//        itemBuilder: (context, i) {
////          ProjectModel project = projectSnap.data[index];
//          return Column(
//            children: <Widget>[
//              Text(
//                'ID :- ' + projectSnap[i]["ID"],
//                style: TextStyle(
//                    color: Colors.white, fontSize: 18),
//              ),
//              Text('Name :- ' + projectSnap[i]["Name"],
//                  style: TextStyle(
//                      color: Colors.white, fontSize: 18)),
//              Text('Age :- ' + projectSnap[i]["Age"],
//                  style: TextStyle(
//                      color: Colors.white, fontSize: 18)),
//              Text('CGP :- ' + projectSnap[i]["CGP"],
//                  style: TextStyle(
//                      color: Colors.white, fontSize: 18)),
//              Text(
//                  'Department :- ' +
//                      projectSnap[i]["Department"],
//                  style: TextStyle(
//                      color: Colors.white, fontSize: 18)),
//              Text(
//                  'Gender :- ' +
//                      projectSnap[i]["Gender"],
//                  style: TextStyle(
//                      color: Colors.white, fontSize: 18)),
//              SizedBox(
//                height: 20,
//              )
//            ],
//          );
//        },
//      );
//    },
//    future: getProjectDetails(),
//  );
//}
//
//@override
//Widget build(BuildContext context) {
//  return Scaffold(
//    appBar: AppBar(
//      title: Text('ProjectList'),
//    ),
//    body: projectWidget(),
//  );
//}
