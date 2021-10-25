library library_widgets;

import 'package:flutter/material.dart';

import 'widgets/outdoor_letters.dart';

class LibraryWidgets {
  static Widget outdoorLetters({
    Key? key,
    required String value,
    double? width,
    double? height,
    BoxDecoration? decoration,
    TextStyle? textStyle,
    Duration duration = const Duration(milliseconds: 500),
    int numbersExtraSpace = 3,
  }) =>
      OutdoorLetters(
        value: value,
        decoration: decoration,
        duration: duration,
        height: height,
        key: key,
        numbersExtraSpace: numbersExtraSpace,
        textStyle: textStyle,
        width: width,
      );
}
