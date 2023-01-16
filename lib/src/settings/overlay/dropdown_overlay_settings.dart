// ignore_for_file: no-magic-number
import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the dropdown content (overlay) of the widget.
class DropdownOverlaySettings {
  /// The decoration of the dropdown content (overlay).
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration decoration;

  /// The margin of the dropdown content (overlay).
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The padding of the dropdown content (overlay).
  /// Default value is [null].
  final EdgeInsetsGeometry? padding;

  /// The minimum height of the dropdown content (overlay).
  /// Default value is [0].
  final double minHeight;

  /// The maximum height of the dropdown content (overlay).
  /// Default value is [200].
  final double maxHeight;

  /// The offset of the dropdown content (overlay).
  /// Default value is [Offset(0, 0)].
  final Offset offset;

  /// The duration of the animation of the dropdown content (overlay).
  /// Default value is [Duration(milliseconds: 400)].
  final Duration animationDuration;

  /// The curve of the animation of the dropdown content (overlay).
  /// Default value is [Curves.easeInOutQuart].
  final Curve fadeAnimationCurve;

  /// The curve of the size animation of the dropdown content (overlay).
  /// Default value is [Interval(0.5,1,curve: Curves.easeInOutQuart)].
  final Curve sizeAnimationCurve;

  /// The builder of the animation of the dropdown content (overlay).
  final Widget Function(
    BuildContext context,
    Widget? child,
    AnimationController animationController,
  )? animationBuilder;

  /// Creating an argument constructor of [DropdownOverlaySettings] class.
  const DropdownOverlaySettings({
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
    this.animationBuilder,
  });
}
