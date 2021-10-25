import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FadeAutoComplete extends StatelessWidget {
  FadeAutoComplete({
    Key? key,
    required this.keys,
    required this.controller,
    this.textAlign = TextAlign.start,
    this.decoration,
    this.style,
    this.autofocus = false,
    this.textStyle,
    this.keyboardType,
    this.onSubmitted,
    this.onChanged,
    this.autocorrect = true,
    this.focusNode,
    this.autovalidateMode,
    this.cursorColor,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorWidth = 2.0,
    this.enableInteractiveSelection = true,
    this.enableSuggestions = true,
    this.enabled,
    this.initialValue,
    this.colorBackgroundText,
    this.validator,
    this.onTap,
  }) : super(key: key);
  final List<String> keys;
  final fadeController = TextEditingController();
  final indexKey = ValueNotifier<int?>(null);
  final TextAlign textAlign;
  final TextEditingController controller;
  final InputDecoration? decoration;
  final TextStyle? style;
  final bool autofocus;
  final TextStyle? textStyle;
  final TextInputType? keyboardType;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final bool autocorrect;
  final FocusNode? focusNode;
  final AutovalidateMode? autovalidateMode;
  final Color? cursorColor;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final double cursorWidth;
  final bool enableInteractiveSelection;
  final bool enableSuggestions;
  final bool? enabled;
  final String? initialValue;
  final Color? colorBackgroundText;
  final String? Function(String?)? validator;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlign: textAlign,
          controller: fadeController,
          style: textStyle?.copyWith(
                color: Colors.grey[400],
              ) ??
              TextStyle(
                color: Colors.grey[400],
              ),
          decoration: decoration?.copyWith(hintText: ''),
        ),
        Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: TextFormField(
            key: key,
            validator: validator,
            textAlign: textAlign,
            focusNode: focusNode,
            autofocus: autofocus,
            style: textStyle,
            controller: controller,
            keyboardType: keyboardType,
            autovalidateMode: autovalidateMode,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorWidth: cursorWidth,
            decoration: decoration,
            enableInteractiveSelection: enableInteractiveSelection,
            enableSuggestions: enableSuggestions,
            enabled: enabled,
            initialValue: initialValue,
            onTap: onTap,
            onFieldSubmitted: (value) {
              _autoComplete(value: value);
              if (onSubmitted != null) onSubmitted!(value);
            },
            onChanged: (value) {
              if (controller.text.isEmpty) {
                fadeController.clear();
              } else {
                final indexKey = keys.indexWhere(
                  (element) => element.startsWith(
                    value,
                  ),
                );
                if (indexKey >= 0) {
                  fadeController.text = keys[indexKey];
                } else {
                  fadeController.clear();
                }
              }
              if (onChanged != null) onChanged!(value);
            },
            autocorrect: autocorrect,
          ),
        ),
      ],
    );
  }

  _autoComplete({required String value}) {
    if (fadeController.value.text.isNotEmpty) {
      controller.text = fadeController.text;
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length),
      );
      fadeController.clear();
    }
  }
}
