import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the dropdown content (modal) of the widget.
class DropdownModalSettings {
  /// The initial size of the modal.
  /// Default value is [0.7].
  final double initialChildSize;

  /// The minimum size of the modal.
  /// Default value is [0.2].
  final double minChildSize;

  /// The maximum size of the modal.
  /// Default value is [0.9].
  final double maxChildSize;

  /// The shape of the modal.
  /// Default value is [RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)))].
  final ShapeBorder? shape;

  /// The background color of the modal.
  /// Default value is [null].
  /// Because the background color of the modal is set by the [GlobalSettings].
  final Color? backgroundColor;

  /// The barrier color of the modal.
  /// Default value is [null].
  /// Because the barrier color of the modal is set by the [GlobalSettings].
  final Color? barrierColor;

  /// The padding of the content of the modal.
  /// Default value is [EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0)].
  final EdgeInsetsGeometry? contentPadding;

  /// The shape of the modal.
  static const kShapeBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(15.0),
    ),
  );

  /// Creating an argument constructor of [DropdownModalSettings] class.
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
