import 'package:flutter/material.dart';

class PillboxIconSettings {
  final IconData? iconData;
  final double? size;
  final Color? defaultColor;
  final Color? hoverColor;
  final Color? focusColor;
  final EdgeInsetsGeometry? padding;

  const PillboxIconSettings({
    this.iconData = Icons.expand_more_rounded,
    // its specyfic parameter for icon.
    // ignore: no-magic-number
    this.size = 16.0,
    this.defaultColor,
    this.hoverColor,
    this.focusColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0),
  });
}
