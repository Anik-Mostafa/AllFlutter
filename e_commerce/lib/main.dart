import 'package:flutter/material.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets Rock!"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          print("Button was pressed");
        },
      ),
    );
  }
}

//floatingActionButton: FloatingActionButton(
//elevation: 10.0,
//child: Icon(Icons.add),
//onPressed: (){
//print('I am Floating button');
//}
//),
