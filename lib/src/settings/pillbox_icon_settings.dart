import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the icon of the pillbox.
class PillboxIconSettings {
  /// The icon of the pillbox.
  /// Default value is [Icons.expand_more_rounded].
  final IconData? iconData;

  /// The size of the icon of the pillbox.
  /// Default value is [16.0].
  final double? size;

  /// The color of the icon of the pillbox.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? defaultColor;

  /// The color of the icon of the pillbox when the mouse is hovering over it.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? hoverColor;

  /// The color of the icon of the pillbox when it is focused.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? focusColor;

  /// The padding of the icon of the pillbox.
  /// Default value is [EdgeInsets.symmetric(horizontal: 12.0)].
  final EdgeInsetsGeometry? padding;

  /// Creating an argument constructor of [PillboxIconSettings] class.
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
