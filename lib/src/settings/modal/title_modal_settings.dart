import 'package:flutter/material.dart';

class TitleModalSettings {
  final String? title;
  final TextStyle titleTextStyle;
  final EdgeInsetsGeometry? titlePadding;
  final TextOverflow? titleOverflow;

  static const kTitleTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  const TitleModalSettings({
    this.title,
    this.titleTextStyle = kTitleTextStyle,
    this.titlePadding,
    this.titleOverflow = TextOverflow.ellipsis,
  });
}
