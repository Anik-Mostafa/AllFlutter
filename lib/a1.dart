import 'package:flutter/material.dart';

class Jio1 extends StatefulWidget {
  @override
  _Jio1State createState() => _Jio1State();
}

class _Jio1State extends State<Jio1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Text('cart +'),
          backgroundColor: Colors.blue[400],
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: Center(child: Text('Jio 1', textAlign: TextAlign.center)),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('assets/a1.jpg'),
            Text(
              'This is a lake moon place.',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 3.0,
              ),
            ),
          ],
        ));
  }
}
