import 'package:flutter/material.dart';

class DropdownModalSettings {
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final Color? barrierColor;
  final EdgeInsetsGeometry? contentPadding;

  static const kShapeBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(15.0),
    ),
  );

  const DropdownModalSettings({
    // its specific param for DraggableScrollableSheet
    // ignore: no-magic-number
    this.initialChildSize = 0.7,
    // its specific param for DraggableScrollableSheet
    // ignore: no-magic-number
    this.minChildSize = 0.2,
    // its specific param for DraggableScrollableSheet
    // ignore: no-magic-number
    this.maxChildSize = 0.9,
    this.shape = kShapeBorder,
    this.backgroundColor,
    this.barrierColor,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
  });
}
