import 'package:flutter/material.dart';

class CategoryNameModalSettings {
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignmentGeometry;
  final BoxConstraints constraints;
  final BoxDecoration decoration;
  final TextStyle textStyle;
  final EdgeInsetsGeometry? textPadding;
  final TextOverflow? textOverflow;
  final BorderRadius? inkWellBorderRadius;
  final Color? highlightColor;
  final Color? splashColor;

  static const kDefaultTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

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
