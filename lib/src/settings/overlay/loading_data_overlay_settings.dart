import 'package:flutter/material.dart';

class LoadingDataOverlaySettings {
  /// The main axis alignment of the loading data overlay.
  /// Default value is [MainAxisAlignment.center].
  final MainAxisAlignment rowMainAxisAlignment;

  /// The padding of the loading data overlay.
  /// Default value is [EdgeInsets.all(8.0)].
  final EdgeInsetsGeometry padding;

  const LoadingDataOverlaySettings({
    this.rowMainAxisAlignment = MainAxisAlignment.center,
    this.padding = const EdgeInsets.all(8.0),
  });
}
