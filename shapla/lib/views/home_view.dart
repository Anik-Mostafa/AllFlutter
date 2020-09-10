import 'package:flutter/material.dart';
import 'package:shapla/pages/screen1.dart';
import 'package:shapla/ui/base_widget.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      return Screen1();
    });
  }
}
