import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the done button of list data view in modal mode.
class DoneButtonModalSettings {
  /// The visibility of the done button.
  /// Default value is [true].
  final bool isVisible;

  /// The margin of the done button.
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The decoration of the done button.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration buttonDecoration;

  /// The title of the done button.
  /// Default value is ['Done'].
  final String? title;

  /// The text style of the done button.
  /// Default value is [TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)].
  final TextStyle textStyle;

  /// The padding of the done button.
  /// Default value is [EdgeInsets.symmetric(horizontal: 10, vertical: 6)].
  final EdgeInsetsGeometry? titlePadding;

  /// The icon of the done button.
  /// Default value is [null].
  final IconData? icon;

  /// The color of the icon of the done button.
  /// Default value is [null].
  /// Because the color of the icon is set by the [GlobalSettings].
  final Color? iconColor;

  /// The size of the icon of the done button.
  /// Default value is [16.0].
  final double? iconSize;

  /// The padding of the icon of the done button.
  /// Default value is [null].
  final EdgeInsetsGeometry? iconPadding;

  /// The default text style of the done button.
  static const kTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  /// Creating an argument constructor of [DoneButtonModalSettings] class.
  const DoneButtonModalSettings({
    this.isVisible = true,
    this.margin,
    this.buttonDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.title = 'Done',
    this.textStyle = kTextStyle,
    this.titlePadding = const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    this.icon,
    this.iconColor,
    // Its specific param for Icon.
    // ignore: no-magic-number
    this.iconSize = 16.0,
    this.iconPadding,
  });
}
