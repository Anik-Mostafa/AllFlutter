import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Vending Now",
                  style: TextStyle(
                    fontSize: 40,
                  ),
//                textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "images/a.png",
                  height: 70,
                  width: 70,
                ),
                SizedBox(
                  height: 100,
                ),
                Text("Please wait a few seconds to dispense..")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
