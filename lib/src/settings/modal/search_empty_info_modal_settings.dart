import 'package:flutter/material.dart';

class SearchEmptyInfoModalSettings {
  final String text;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? padding;
  final bool isCenter = true;

  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  const SearchEmptyInfoModalSettings({
    this.text = 'No results found',
    this.textStyle = defaultTextStyle,
    this.padding = const EdgeInsets.all(6.0),
  });
}
