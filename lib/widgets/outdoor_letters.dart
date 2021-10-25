import 'dart:async';
import 'package:flutter/material.dart';

///Create by: Dev. Leonardo Serrano

///
/// Simule Outdoor letters
///

class OutdoorLetters extends StatefulWidget {
  final String value;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;
  final Duration duration;
  final int numbersExtraSpace;

  const OutdoorLetters({
    Key? key,
    required this.value,
    this.width,
    this.height,
    this.decoration,
    this.textStyle,
    this.duration = const Duration(milliseconds: 500),
    this.numbersExtraSpace = 3,
  }) : super(key: key);

  @override
  State<OutdoorLetters> createState() => _OutdoorLettersState();
}

class _OutdoorLettersState extends State<OutdoorLetters> {
  final valueX = ValueNotifier<String>('');
  late final Timer _timerLocal;
  @override
  void initState() {
    _addExtraSpace(widget.value, widget.numbersExtraSpace);
    _startTimerRemoveAndAdd(widget.duration);
    super.initState();
  }

  @override
  void dispose() {
    _timerLocal.cancel();
    valueX.dispose();
    super.dispose();
  }

  _addExtraSpace(String value, int numbersExtraSpace) {
    for (int i = 0; i < numbersExtraSpace; i++) {
      value += ' ';
    }
    valueX.value = value;
  }

  _startTimerRemoveAndAdd(Duration duration) {
    _timerLocal = Timer.periodic(duration, (timer) {
      final addToEnd = valueX.value[0];
      final newString = (valueX.value.substring(1)) + addToEnd;
      valueX.value = newString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: widget.decoration,
      child: ValueListenableBuilder<String>(
        valueListenable: valueX,
        builder: (context, String value, widgetBuilder) {
          return Text(
            value,
            style: widget.textStyle,
          );
        },
      ),
    );
  }
}
