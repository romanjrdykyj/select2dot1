import 'package:flutter/material.dart';

class SelectOverloadInfoSettings {
  final String text;
  final String firstPartText;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? padding;

  static const defaultTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  const SelectOverloadInfoSettings({
    this.textStyle = defaultTextStyle,
    this.text = ' items selected.',
    this.firstPartText = '',
    this.padding = const EdgeInsets.only(left: 7.0),
  });
}
