import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the list data view in modal mode.
class ListDataViewModalSettings {
  /// The margin of the list data view.
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The padding of the list data view.
  /// Default value is [null].
  final EdgeInsetsGeometry? padding;

  /// Minimum duration of loading data.
  /// Default value is [500 milliseconds].
  final Duration minLoadDuration;

  /// Creating an argument constructor of [ListDataViewModalSettings] class.
  const ListDataViewModalSettings({
    this.margin,
    this.padding,
    this.minLoadDuration = const Duration(milliseconds: 500),
  });
}
