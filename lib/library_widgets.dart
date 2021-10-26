library library_widgets;

import 'package:flutter/material.dart';

import 'widgets/card_message.dart';
import 'widgets/fade_auto_complet.dart';
import 'widgets/outdoor_letters.dart';

class LibraryWidgets {
  LibraryWidgets._();
  static Widget outdoorLetters({
    Key? key,
    required String value,
    double? width,
    double? height,
    BoxDecoration? decoration,
    TextStyle? textStyle,
    Duration duration = const Duration(milliseconds: 500),
    int numbersExtraSpace = 3,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
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
        padding: padding,
        margin: margin,
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

  static Widget cardMessage({
    Key? key,
    CircleAvatar? circleAvatar,
    Widget? leading,
    Widget? body,
    Widget? action,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    Color? backgroundColor,
    PositionVerticalTriangle? positionVerticalTriangle,
    PositionHorizontalTriangle? positionHorizontalTriangle,
    double? maxHeight,
    double? maxWidth,
  }) =>
      CardMessage(
        key: key,
        action: action,
        body: body,
        border: border,
        circleAvatar: circleAvatar,
        leading: leading,
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        positionHorizontalTriangle: positionHorizontalTriangle,
        positionVerticalTriangle: positionVerticalTriangle,
        maxHeight: maxHeight ?? double.infinity,
        maxWidth: maxWidth ?? 300,
      );
}
