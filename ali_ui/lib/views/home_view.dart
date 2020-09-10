import 'package:ali_ui/pages/grid_view.dart';
import 'package:ali_ui/pages/horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:ali_ui/pages/slide.dart';
import 'package:ali_ui/ui/base_widget.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @overrid
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      return Container(
        child: Scaffold(
//          appBar: AppBar(),
//        floatingActionButton: FloatingActionButton(l),
          body: ListView(
            children: <Widget>[
              Slide('slide1.jpg', 'slide2.jpg', 'slide3.png', 'slide4.png'),
              HoriList(),
              Container(
                height: 320,
                child: Products(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
