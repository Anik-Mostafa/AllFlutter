import 'package:database/signin.dart';
import 'package:flutter/material.dart';

class Authrnticate extends StatefulWidget {
  @override
  _AuthrnticateState createState() => _AuthrnticateState();
}

class _AuthrnticateState extends State<Authrnticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Signin(),
    );
  }
}
