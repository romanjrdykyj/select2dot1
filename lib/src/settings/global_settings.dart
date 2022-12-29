import 'package:flutter/material.dart';

/// This is a class which contains all the global settings of the widget.
class GlobalSettings {
  /// The font family to use for the text.
  final String? fontFamily;

  /// The main color used in the widget.
  /// Default value is [Color(0xFF007AFF)].
  final Color mainColor;

  /// The text color used in the widget.
  /// Default value is [Colors.black].
  final Color textColor;

  /// The background color used in the widget.
  /// Default value is [Colors.white].
  final Color backgroundColor;

  /// The inactive color used in the widget.
  /// Default value is [Color(0xFFAAAAAA)].
  final Color inActiveColor;

  /// The active color used in the widget.
  /// Default value is [Color(0xFF808186)].
  final Color activeColor;

  /// The hover list item color used in the widget..
  /// Default value is [Color(0xFFDDEBFF)].
  final Color hoverListItemColor;

  /// The chip color used in the widget.
  /// Default value is [Color(0xFFE4E4E4)].
  final Color chipColor;

  /// Creating an argument constructor of [GlobalSettings] class.
  const GlobalSettings({
    this.fontFamily,
    this.mainColor = const Color(0xFF007AFF),
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.inActiveColor = const Color(0xFFAAAAAA),
    this.activeColor = const Color(0xFF808186),
    this.hoverListItemColor = const Color(0xFFDDEBFF),
    this.chipColor = const Color(0xFFE4E4E4),
  });
}
