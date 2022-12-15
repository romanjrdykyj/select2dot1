import 'package:flutter/material.dart';

class ListDataViewOverlaySettings {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool? trackVisibility;
  final bool? thumbVisibility;
  final Color? thumbColor;
  final Color? trackColor;
  final Color? trackBorderColor;
  final Radius? radiusScrollbar;
  final double? thicknessScrollbar;
  final OutlinedBorder? shapeScrollbar;

  const ListDataViewOverlaySettings({
    this.margin,
    this.padding,
    this.trackVisibility = true,
    this.thumbVisibility = true,
    this.thumbColor,
    this.trackColor,
    this.trackBorderColor,
    this.radiusScrollbar = const Radius.circular(5.0),
    this.thicknessScrollbar,
    this.shapeScrollbar,
  });
}
