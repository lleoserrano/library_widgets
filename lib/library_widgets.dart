library library_widgets;

import 'package:flutter/material.dart';

import 'widgets/fade_auto_complet.dart';
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

  static Widget autoCompletFade({
    required List<String> keys,
    TextAlign textAlign = TextAlign.start,
    required TextEditingController controller,
    InputDecoration? decoration,
    TextStyle? style,
    bool autofocus = false,
    TextStyle? textStyle,
    TextInputType? keyboardType,
    void Function(String)? onSubmitted,
    void Function(String)? onChanged,
    bool autocorrect = true,
    FocusNode? focusNode,
    AutovalidateMode? autovalidateMode,
    Color? cursorColor,
    double? cursorHeight,
    Radius? cursorRadius,
    double cursorWidth = 2.0,
    bool enableInteractiveSelection = true,
    bool enableSuggestions = true,
    bool? enabled,
    String? initialValue,
    Color? colorBackgroundText,
    String? Function(String?)? validator,
    void Function()? onTap,
  }) =>
      FadeAutoComplete(
        controller: controller,
        keys: keys,
        textAlign: textAlign,
        decoration: decoration,
        style: style,
        autofocus: autofocus,
        textStyle: textStyle,
        keyboardType: keyboardType,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        autocorrect: autocorrect,
        focusNode: focusNode,
        autovalidateMode: autovalidateMode,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorWidth: cursorWidth,
        enableInteractiveSelection: enableInteractiveSelection,
        enableSuggestions: enableSuggestions,
        enabled: enabled,
        initialValue: initialValue,
        colorBackgroundText: colorBackgroundText,
        validator: validator,
        onTap: onTap,
      );
}
