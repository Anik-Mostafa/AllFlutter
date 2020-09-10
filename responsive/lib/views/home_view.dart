import 'package:flutter/material.dart';
import 'package:responsive/ui/base_widget.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      return Container(
        child: Scaffold(
//          appBar: AppBar(),
          body: ListView(
            children: <Widget>[],
          ),
        ),
      );
    });
  }
}
