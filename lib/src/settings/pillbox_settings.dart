// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the pillbox of the widget.
class PillboxSettings {
  /// The mouse cursor of the pillbox.
  /// Default value is [SystemMouseCursors.click].
  final MouseCursor mouseCursor;

  /// The constraints of the pillbox.
  /// Default value is [BoxConstraints(minHeight: 45)].
  final BoxConstraints? constraints;

  /// The padding of the pillbox.
  /// Default value is [EdgeInsets.all(5)].
  final EdgeInsetsGeometry? padding;

  /// The margin of the pillbox.
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The decoration of the pillbox.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration defaultDecoration;

  /// The decoration of the pillbox when the mouse is hovering over it.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration hoverDecoration;

  /// The decoration of the pillbox when it is focused.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration focusDecoration;

  /// The decoration of the pillbox when it is active.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration activeDecoration;

  /// Creating an argument constructor of [PillboxSettings] class.
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
