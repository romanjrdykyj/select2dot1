import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the category name of list data view in overlay mode.
class CategoryNameOverlaySettings {
  /// The mouse cursor when the mouse is hovering over the category name.
  /// Default value is [SystemMouseCursors.click].
  final MouseCursor mouseCursorSelect;

  /// The margin of the category name.
  /// Default value is [EdgeInsets.symmetric(horizontal: 4.0)].
  final EdgeInsetsGeometry? margin;

  /// The alignment of the category name.
  /// Default value is [Alignment.centerLeft].
  final AlignmentGeometry? alignmentGeometry;

  /// The constraints of the category name.
  /// Default value is [BoxConstraints(minHeight: 40)].
  final BoxConstraints constraints;

  /// The decoration of the category name.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration defaultDecoration;

  /// The decoration of the category name when the mouse is hovering over it.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration hoverDecoration;

  /// The text style of the category name.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w700)].
  final TextStyle textStyle;

  /// The padding of the category name.
  /// Default value is [EdgeInsets.only(left: 8.0)].
  final EdgeInsetsGeometry? textPadding;

  /// The overflow of the category name.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? textOverflow;

  /// Default text style of the category name.
  static const kDefaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  /// Creating an argument constructor of [CategoryNameOverlaySettings] class.
  const CategoryNameOverlaySettings({
    this.mouseCursorSelect = SystemMouseCursors.click,
    this.margin = const EdgeInsets.symmetric(horizontal: 4.0),
    this.constraints = const BoxConstraints(minHeight: 40),
    this.alignmentGeometry = Alignment.centerLeft,
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
    this.textStyle = kDefaultTextStyle,
    this.textPadding = const EdgeInsets.only(left: 8.0),
    this.textOverflow = TextOverflow.ellipsis,
  });
}
