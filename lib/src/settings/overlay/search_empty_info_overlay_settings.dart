import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the search empty info of dropdown content in overlay mode.
class SearchEmptyInfoOverlaySettings {
  /// The text of the search empty info of dropdown content in overlay mode.
  /// Default value is 'No results found'.
  final String text;

  /// The text style of the search empty info of dropdown content in overlay mode.
  /// Default value is [defaultTextStyle].
  final TextStyle textStyle;

  /// The padding of the search empty info of dropdown content in overlay mode.
  /// Default value is [EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0)].
  final EdgeInsetsGeometry? padding;

  /// Default text style of the search empty info of dropdown content in overlay mode.
  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [SearchEmptyInfoOverlaySettings] class.
  const SearchEmptyInfoOverlaySettings({
    this.text = 'No results found',
    this.textStyle = defaultTextStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
  });
}
