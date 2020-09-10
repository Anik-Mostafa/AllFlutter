import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:shapla/views/home_view.dart';

//void main() => runApp(DevicePreview(builder: (context) => MyApp()));
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
//    var hasDetailPage =
//        MediaQuery.of(context).orientation == Orientation.landscape;
    return MaterialApp(
      title: 'Shapla',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
