import 'package:flutter/material.dart';

class CategoryNameOverlaySettings {
  final MouseCursor mouseCursorSelect;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignmentGeometry;
  final BoxConstraints constraints;
  final BoxDecoration defaultDecoration;
  final BoxDecoration hoverDecoration;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? textPadding;
  final TextOverflow? textOverflow;

  static const kDefaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

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
