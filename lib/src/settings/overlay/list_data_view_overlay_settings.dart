import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the list data view of dropdown content in overlay mode.
class ListDataViewOverlaySettings {
  /// The margin of the list data view of dropdown content in overlay mode.
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The padding of the list data view of dropdown content in overlay mode.
  /// Default value is [null].
  final EdgeInsetsGeometry? padding;

  /// The visibility of the track of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [true].
  final bool? trackVisibility;

  /// The visibility of the thumb of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [true].
  final bool? thumbVisibility;

  /// The color of the thumb of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? thumbColor;

  /// The color of the track of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? trackColor;

  /// The border color of the track of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? trackBorderColor;

  /// The radius of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [Radius.circular(5.0)].
  final Radius? radiusScrollbar;

  /// The thickness of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [null].
  final double? thicknessScrollbar;

  /// The shape of the scrollbar of the list data view of dropdown content in overlay mode.
  /// Default value is [null].
  final OutlinedBorder? shapeScrollbar;

  /// Minimum duration of loading data.
  /// Default value is [500 milliseconds].
  final Duration minLoadDuration;

  /// Duration of animation of the list data view of dropdown content in overlay mode.
  /// Default value is [300 milliseconds].
  final Duration durationAnimationListDataView;

  /// Curve of animation of the list data view of dropdown content in overlay mode.
  /// Default value is [Curves.easeInOutQuart].
  final Curve curveAnimationListDataView;

  /// Creating an argument constructor of [ListDataViewOverlaySettings] class.
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
    this.minLoadDuration = const Duration(milliseconds: 500),
    this.durationAnimationListDataView = const Duration(milliseconds: 300),
    this.curveAnimationListDataView = Curves.easeInOutQuart,
  });
}
