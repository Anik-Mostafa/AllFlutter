import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shapla/pages/screen1.dart';
import 'package:shapla/pages/screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(''),
//        backgroundColor: Colors.pink[200],
//      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back, size: 20),
          backgroundColor: Colors.pink[200],
          onPressed: () {
            Navigator.pop(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => Screen1()));
          }),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Select Your Organization",
                style: TextStyle(fontSize: 22, fontFamily: 'Spartan'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              elevation: 4,
              padding: EdgeInsets.all(40),
              color: Colors.pink[200],
              child: Text(
                "MIST",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Screen3()));
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              elevation: 4,
              padding: EdgeInsets.fromLTRB(18, 45, 18, 45),
              color: Colors.pink[200],
              child: Text(
                "Comming soon",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
              ),
              onPressed: () {
                AlertDialog alert = AlertDialog(
                  content: Text("This Page is under construction"),
                  actions: [],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
