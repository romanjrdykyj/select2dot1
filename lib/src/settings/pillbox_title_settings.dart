import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the title of the pillbox.
class PillboxTitleSettings {
  /// The title of the pillbox.
  /// Default value is [null].
  /// If [null] is passed, the title will not be shown.
  final String? title;

  /// The padding of the title.
  /// Default value is [EdgeInsets.only(bottom: 5.0)].
  final EdgeInsetsGeometry? titlePadding;

  /// The style of the title when the pillbox is in the default state.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w500)].
  final TextStyle titleStyleDefault;

  /// The style of the title when the mouse is hovering over the pillbox.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w500)].
  final TextStyle titleStyleHover;

  /// The style of the title when the pillbox is focused.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w500)].
  final TextStyle titleStyleFocus;

  /// The default style of the title.
  static const kTitleStyleDefault = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  /// Creating an argument constructor of [PillboxTitleSettings] class.
  const PillboxTitleSettings({
    this.title,
    this.titlePadding = const EdgeInsets.only(bottom: 5.0),
    this.titleStyleDefault = kTitleStyleDefault,
    this.titleStyleHover = kTitleStyleDefault,
    this.titleStyleFocus = kTitleStyleDefault,
  });
}
