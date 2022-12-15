import 'package:flutter/material.dart';

class GlobalSettings {
  final String? fontFamily;
  final Color mainColor;
  final Color textColor;
  final Color backgroundColor;
  final Color inActiveColor;
  final Color activeColor;
  final Color hoverListItemColor;
  final Color chipColor;

  const GlobalSettings({
    // its specyfic parameters.
    // ignore: no-magic-number
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
