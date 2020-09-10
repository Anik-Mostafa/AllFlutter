import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HoriList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catagory(
            imageLocation: 'images/icon1.png',
            imageCaption: 'Dress',
          ),
          Catagory(
            imageLocation: 'images/icon2.png',
            imageCaption: 'Cort',
          ),
          Catagory(
            imageLocation: 'images/icon3.png',
            imageCaption: 'Watch',
          ),
          Catagory(
            imageLocation: 'images/icon4.png',
            imageCaption: 'Gold',
          ),
          Catagory(
            imageLocation: 'images/icon5.jpg',
            imageCaption: 'Bag',
          ),
        ],
      ),
    );
  }
}

class Catagory extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Catagory({this.imageLocation, this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 65,
          child: ListTile(
            title: Image.asset(imageLocation, width: 100, height: 80),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 11),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
