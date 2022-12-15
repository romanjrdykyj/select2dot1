// ignore_for_file: no-magic-number
import 'package:flutter/material.dart';

class DropdownContentOverlaySettings {
  final BoxDecoration decoration;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double minHeight;
  final double maxHeight;
  final Offset offset;
  final Duration animationDuration;
  final Curve fadeAnimationCurve;
  final Curve sizeAnimationCurve;

  const DropdownContentOverlaySettings({
    this.decoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.margin,
    this.padding,
    this.minHeight = 0,
    this.maxHeight = 200,
    this.offset = const Offset(0, 0),
    this.animationDuration = const Duration(milliseconds: 400),
    this.sizeAnimationCurve = Curves.easeInOutQuart,
    this.fadeAnimationCurve = const Interval(
      0.5,
      1,
      curve: Curves.easeInOutQuart,
    ),
  });
}
