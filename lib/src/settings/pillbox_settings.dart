// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';

class PillboxSettings {
  final MouseCursor mouseCursor;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration defaultDecoration;
  final BoxDecoration hoverDecoration;
  final BoxDecoration focusDecoration;
  final BoxDecoration activeDecoration;

  const PillboxSettings({
    this.mouseCursor = SystemMouseCursors.click,
    this.constraints = const BoxConstraints(
      minHeight: 45,
    ),
    this.padding = const EdgeInsets.all(5),
    this.margin,
    this.defaultDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.hoverDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.focusDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.activeDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
  });
}
