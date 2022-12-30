import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the empty info of the widget.
class SelectEmptyInfoSettings {
  /// The text of the empty info.
  /// Default value is [Select from ..].
  final String text;

  /// The style of the text of the empty info.
  /// Default value is [TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400)].
  final TextStyle textStyle;

  /// The padding of the empty info.
  /// Default value is [EdgeInsets.only(left: 7.0)].
  final EdgeInsetsGeometry? padding;

  /// The default style of the text of the empty info.
  static const defaultTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [SelectEmptyInfoSettings] class.
  const SelectEmptyInfoSettings({
    this.text = 'Select from ..',
    this.textStyle = defaultTextStyle,
    this.padding = const EdgeInsets.only(left: 7.0),
  });
}
