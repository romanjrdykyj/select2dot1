import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the overload info of the widget.
class SelectOverloadInfoSettings {
  /// The text of the info.
  /// Default value is [ items selected.].
  final String text;

  /// The first part of the text of the overload info.
  /// Default value is [null].
  /// If [null] is passed, the first part of the text will not be shown.
  final String firstPartText;

  /// The style of the text of the overload info.
  /// Default value is [TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400)].
  final TextStyle textStyle;

  /// The padding of the overload info.
  /// Default value is [EdgeInsets.only(left: 7.0)].
  final EdgeInsetsGeometry? padding;

  /// The default style of the text of the overload info.
  static const defaultTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [SelectOverloadInfoSettings] class.
  const SelectOverloadInfoSettings({
    this.textStyle = defaultTextStyle,
    this.text = ' items selected.',
    this.firstPartText = '',
    this.padding = const EdgeInsets.only(left: 7.0),
  });
}
