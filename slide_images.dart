import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider(
        items: child,
        autoPlay: true,
        aspectRatio: 2.0,
        onPageChangedCallback: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4)),
              );
            }),
          ))
    ]);
  }
}




CarouselSlider(
height: 400.0,
items: [1,2,3,4,5].map((i) {
return Builder(
builder: (BuildContext context) {
return Container(
width: MediaQuery.of(context).size.width,
margin: EdgeInsets.symmetric(horizontal: 5.0),
decoration: BoxDecoration(
color: Colors.amber
),
child: Text('text $i', style: TextStyle(fontSize: 16.0),)
);
},
);
}).toList(),
)
