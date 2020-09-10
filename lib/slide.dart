import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  var rating = 0.0;
  var data = ['one', 'two', 'three'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Slide'),
      ),
      body: ListView(
        children: <Widget>[
          SmoothStarRating(
            rating: rating,
            size: 30,
            starCount: 5,
            spacing: 2.0,
            onRatingChanged: (value) {
              setState(() {
                rating = value;
              });
            },
          ),
          Container(
            child: CarouselSlider(
              height: 200.0,
              items:
                  ["a1.jpg", "a2.jpg", "a3.jpg", "a4.jpg", "a5.jpg"].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          "assets/$i",
                          height: 50,
                          width: 100,
                          fit: BoxFit.fill,
                        ));
                  },
                );
              }).toList(),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            backgroundImage: AssetImage(""),
            maxRadius: 40.0,
            child: Table(
              border: TableBorder.all(width: 1.0, color: Colors.black),
              children: [
                TableRow(children: [
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('ID'),
                        Text(data.toString()),
                        Text('ID'),
                        Text(data.toString()),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
