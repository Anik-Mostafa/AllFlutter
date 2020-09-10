import 'package:flutter/material.dart';
import 'package:responsive/ui/sizing_information.dart';
import 'package:responsive/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );
      return builder(context, sizingInformation);
    });
  }
}
