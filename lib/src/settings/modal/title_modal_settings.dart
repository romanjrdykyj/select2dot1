import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the title in modal mode.
class TitleModalSettings {
  /// The title of the modal.
  /// Default value is [null].
  /// If [null] the title is not shown.
  final String? title;

  /// The text style of the title.
  /// Default value is [TextStyle(fontSize: 18, fontWeight: FontWeight.w600)].
  final TextStyle titleTextStyle;

  /// The padding of the title.
  /// Default value is [null].
  final EdgeInsetsGeometry? titlePadding;

  /// The overflow of the title.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? titleOverflow;

  /// Default text style of the title.
  static const kTitleTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  /// Creating an argument constructor of [TitleModalSettings] class.
  const TitleModalSettings({
    this.title,
    this.titleTextStyle = kTitleTextStyle,
    this.titlePadding,
    this.titleOverflow = TextOverflow.ellipsis,
  });
}
