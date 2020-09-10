import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shapla/pages/screen2.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
//          appBar: AppBar(),
        body: ListView(
          children: <Widget>[
            CarouselSlider(
              height: 500.0,
              items: [
                'one1.png',
                'two2.png',
                'three3.png',
                'four4.png',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Image.asset("images/$i"),
                    );
                  },
                );
              }).toList(),
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
//                  side: BorderSide(color: Colors.red),
                ),
                color: Colors.pink[200],
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => Screen2()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
