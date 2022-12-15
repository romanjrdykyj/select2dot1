import 'package:flutter/material.dart';

class DoneButtonModalSettings {
  final bool isVisible;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration buttonDecoration;
  final String? title;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? titlePadding;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final EdgeInsetsGeometry? iconPadding;

  static const kTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  const DoneButtonModalSettings({
    this.isVisible = true,
    this.margin,
    this.buttonDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.title = 'Done',
    this.textStyle = kTextStyle,
    this.titlePadding = const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    this.icon,
    this.iconColor,
    // Its specific param for Icon
    // ignore: no-magic-number
    this.iconSize = 16.0,
    this.iconPadding,
  });
}
