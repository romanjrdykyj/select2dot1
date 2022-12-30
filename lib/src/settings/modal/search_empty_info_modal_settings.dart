import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the search empty info modal.
class SearchEmptyInfoModalSettings {
  /// The text of the search empty info modal.
  /// Default value is ['No results found'].
  final String text;

  /// The text style of the search empty info modal.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w400)].
  final TextStyle textStyle;

  /// The padding of the search empty info modal.
  /// Default value is [EdgeInsets.all(6.0)].
  final EdgeInsetsGeometry? padding;

  /// The alignment of the search empty info modal.
  /// Default value is [true].
  /// If [false] the alignment is [Alignment.topLeft] and used [padding].
  final bool isCenter;

  /// Default text style of the search empty info modal.
  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [SearchEmptyInfoModalSettings] class.
  const SearchEmptyInfoModalSettings({
    this.text = 'No results found',
    this.textStyle = defaultTextStyle,
    this.padding = const EdgeInsets.all(6.0),
    this.isCenter = true,
  });
}
