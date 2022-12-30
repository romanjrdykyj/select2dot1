import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the category name of list data view in modal mode.
class CategoryNameModalSettings {
  /// The margin of the category name.
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The alignment of the category name.
  /// Default value is [Alignment.centerLeft].
  final AlignmentGeometry? alignmentGeometry;

  /// The constraints of the category name.
  /// Default value is [BoxConstraints(minHeight: 50)].
  final BoxConstraints constraints;

  /// The decoration of the category name.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration decoration;

  /// The text style of the category name.
  /// Default value is [TextStyle(fontSize: 20, fontWeight: FontWeight.w700)].
  final TextStyle textStyle;

  /// The padding of the category name.
  /// Default value is [null].
  final EdgeInsetsGeometry? textPadding;

  /// The overflow of the category name.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? textOverflow;

  /// The border radius of the inkwell.
  /// Default value is [BorderRadius.all(Radius.circular(5.0))].
  final BorderRadius? inkWellBorderRadius;

  /// The highlight color of the inkwell.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? highlightColor;

  /// The splash color of the inkwell.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? splashColor;

  /// Default text style of the category name.
  static const kDefaultTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  /// Creating an argument constructor of [CategoryNameModalSettings] class.
  const CategoryNameModalSettings({
    this.margin,
    this.constraints = const BoxConstraints(minHeight: 50),
    this.alignmentGeometry = Alignment.centerLeft,
    this.decoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.textStyle = kDefaultTextStyle,
    this.textPadding,
    this.textOverflow = TextOverflow.ellipsis,
    this.inkWellBorderRadius = const BorderRadius.all(
      Radius.circular(5.0),
    ),
    this.highlightColor,
    this.splashColor,
  });
}
