import 'package:flutter/material.dart';

class SearchEmptyInfoOverlaySettings {
  final String text;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? padding;

  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  const SearchEmptyInfoOverlaySettings({
    this.text = 'No results found',
    this.textStyle = defaultTextStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
  });
}
