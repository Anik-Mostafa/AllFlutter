import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  String urlName;
  String urlName1;
  String urlName2;
  String urlName3;
  Slide(this.urlName, this.urlName1, this.urlName2, this.urlName3);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/$urlName'),
          AssetImage('images/$urlName1'),
          AssetImage('images/$urlName2'),
          AssetImage('images/$urlName3'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 4,
        dotSpacing: 10,
        dotColor: Colors.orange,
        dotBgColor: Colors.black26,
      ),
    );
  }
}
