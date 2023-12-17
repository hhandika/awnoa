import 'package:flutter/material.dart';

enum ScreenType { small, medium, large }

ScreenType getScreenType(BuildContext context) {
  final double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth < 600) {
    return ScreenType.small;
  } else if (deviceWidth < 900) {
    return ScreenType.medium;
  } else {
    return ScreenType.large;
  }
}
