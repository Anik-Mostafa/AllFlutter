//import 'package:flutter/material.dart';
//
//void main() => runApp(MaterialApp(
//      home: Input(),
//    ));
//
//class Input extends StatefulWidget {
//  @override
//  _InputState createState() => _InputState();
//}
//
//class _InputState extends State<Input> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: SafeArea(
//        child: Column(
//          children: <Widget>[
//            TextField(
//              decoration: InputDecoration(
//                  border: InputBorder.none, hintText: 'Enter a search term'),
//            ),
//            TextFormField(
//              decoration: InputDecoration(labelText: 'Enter your username'),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
import 'package:test1/a1.dart';
import 'package:test1/grid.dart';
import 'package:test1/slide.dart';
import 'package:test1/slide_images.dart';

void main() => runApp(MaterialApp(
      home: page1(),
    ));

class page1 extends StatefulWidget {
  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/lake_night.jpg',
          ),
          ClipOval(
            child: Image.asset(
              "assets/lake.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Jio1()),
                  );
                },
                child: Image.asset(
                  'assets/a1.jpg',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Slide()),
                  );
                },
                child: Image.asset(
                  'assets/a2.jpg',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAppO(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/a3.jpg',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  debugPrint('Button clicked');
                },
                child: Image.asset(
                  'assets/a4.jpg',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              FlatButton(
                onPressed: () {
                  debugPrint('Button clicked');
                },
                child: Image.asset(
                  'assets/a5.jpg',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              FlatButton(
                onPressed: () {
                  debugPrint('Button clicked');
                },
                child: Image.asset(
                  'assets/a6.jpg',
                  height: 100.0,
                  width: 100.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
