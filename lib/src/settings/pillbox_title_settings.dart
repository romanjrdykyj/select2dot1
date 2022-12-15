import 'package:flutter/material.dart';

class PillboxTitleSettings {
  final String? title;
  final EdgeInsetsGeometry? titlePadding;
  final TextStyle titleStyleDefault;
  final TextStyle titleStyleHover;
  final TextStyle titleStyleFocus;

  static const kTitleStyleDefault = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  const PillboxTitleSettings({
    this.title,
    this.titlePadding = const EdgeInsets.only(bottom: 5.0),
    this.titleStyleDefault = kTitleStyleDefault,
    this.titleStyleHover = kTitleStyleDefault,
    this.titleStyleFocus = kTitleStyleDefault,
  });
}
