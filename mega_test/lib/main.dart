import 'package:flutter/material.dart';
import 'package:mega_test/uploder.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        child: Text('click'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UploaderImage()),
          );
        },
      ),
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Grid List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body:
//        GridView.count(
//          // Create a grid with 2 columns. If you change the scrollDirection to
//          // horizontal, this produces 2 rows.
//          crossAxisCount: 2,
//          // Generate 100 widgets that display their index in the List.
//          children: List.generate(20, (index) {
//            return Center(
//              child: Text(
//                'Item $index',
//                style: Theme.of(context).textTheme.headline,
//              ),
//            );
//          }),
//        ),
//      ),
//    );
//  }
//}
