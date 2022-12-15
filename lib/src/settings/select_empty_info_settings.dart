import 'package:flutter/material.dart';

class SelectEmptyInfoSettings {
  final String text;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? padding;

  static const defaultTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  const SelectEmptyInfoSettings({
    this.text = 'Select from ..',
    this.textStyle = defaultTextStyle,
    this.padding = const EdgeInsets.only(left: 7.0),
  });
}
