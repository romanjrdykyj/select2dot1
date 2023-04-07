import 'package:flutter/material.dart';

class LoadingDataModalSettings {
  /// The padding of the loading data modal.
  /// Default value is [EdgeInsets.all(8.0)].
  final EdgeInsetsGeometry padding;

  const LoadingDataModalSettings({
    this.padding = const EdgeInsets.all(8.0),
  });
}
