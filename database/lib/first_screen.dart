//import 'package:flutter/material.dart';
//import 'dart:math' as math;
//
//final Color primaryColor = Colors.orange;
//final TargetPlatform platform = TargetPlatform.android;
//
//class SunflowerPainter extends CustomPainter {
//  static const seedRadius = 2.0;
//  static const scaleFactor = 4;
//  static const tau = math.pi * 2;
//
//  static final phi = (math.sqrt(5) + 1) / 2;
//
//  final int seeds;
//
//  SunflowerPainter(this.seeds);
//
//  @override
//  void paint(Canvas canvas, Size size) {
//    var center = size.width / 2;
//
//    for (var i = 0; i < seeds; i++) {
//      var theta = i * tau / phi;
//      var r = math.sqrt(i) * scaleFactor;
//      var x = center + r * math.cos(theta);
//      var y = center - r * math.sin(theta);
//      var offset = Offset(x, y);
//      if (!size.contains(offset)) {
//        continue;
//      }
//      drawSeed(canvas, x, y);
//    }
//  }
//
//  @override
//  bool shouldRepaint(SunflowerPainter oldDelegate) {
//    return oldDelegate.seeds != this.seeds;
//  }
//
//  // Draw a small circle representing a seed centered at (x,y).
//  void drawSeed(Canvas canvas, num x, num y) {
//    var paint = Paint()
//      ..strokeWidth = 2
//      ..style = PaintingStyle.fill
//      ..color = primaryColor;
//    canvas.drawCircle(Offset(x, y), seedRadius, paint);
//  }
//}
//
//class Sunflower extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _SunflowerState();
//  }
//}
//
//class _SunflowerState extends State<Sunflower> {
//  double seeds = 100.0;
//
//  int get seedCount => seeds.floor();
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData().copyWith(
//        platform: platform,
//        brightness: Brightness.dark,
//        sliderTheme: SliderThemeData.fromPrimaryColors(
//          primaryColor: primaryColor,
//          primaryColorLight: primaryColor,
//          primaryColorDark: primaryColor,
//          valueIndicatorTextStyle: DefaultTextStyle.fallback().style,
//        ),
//      ),
//      home: Scaffold(
//        appBar: AppBar(title: Text("Sunflower")),
//        drawer: Drawer(
//            child: ListView(
//          children: [
//            DrawerHeader(
//              child: Center(
//                child: Container(
//                  child: Text(
//                    "Sunflower 🌻",
//                    style: TextStyle(fontSize: 32),
//                  ),
//                ),
//              ),
//            ),
//          ],
//        )),
//        body: Container(
//          constraints: BoxConstraints.expand(),
//          decoration:
//              BoxDecoration(border: Border.all(color: Colors.transparent)),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: [
//              Container(
//                decoration: BoxDecoration(
//                    border: Border.all(color: Colors.transparent)),
//                child: SizedBox(
//                  width: 400,
//                  height: 400,
//                  child: CustomPaint(
//                    painter: SunflowerPainter(seedCount),
//                  ),
//                ),
//              ),
//              Text("Showing $seedCount seeds"),
//              ConstrainedBox(
//                constraints: BoxConstraints.tightFor(width: 300),
//                child: Slider.adaptive(
//                  min: 20,
//                  max: 2000,
//                  value: seeds,
//                  onChanged: (newValue) {
//                    setState(() {
//                      seeds = newValue;
//                    });
//                  },
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
