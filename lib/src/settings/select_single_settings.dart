import 'package:flutter/material.dart';

class SelectSingleSettings {
  final EdgeInsetsGeometry? padding;
  final TextStyle textStyle;
  final TextOverflow? textOverflow;
  final EdgeInsetsGeometry? textPadding;
  final bool showExtraInfo;
  final TextStyle extraInfoTextStyle;
  final TextOverflow? extraInfoTextOverflow;
  final EdgeInsetsGeometry? extraInfopadding;
  final bool showAvatar;
  final EdgeInsetsGeometry? avatarMargin;
  final double? avatarMaxWidth;
  final double? avatarMaxHeight;

  static const kDefaultTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  static const kExtraInfoTextStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );

  const SelectSingleSettings({
    this.padding = const EdgeInsets.only(left: 7.0),
    this.textStyle = kDefaultTextStyle,
    this.textOverflow = TextOverflow.ellipsis,
    this.textPadding,
    this.showExtraInfo = true,
    this.extraInfoTextStyle = kExtraInfoTextStyle,
    this.extraInfoTextOverflow = TextOverflow.ellipsis,
    this.extraInfopadding,
    this.showAvatar = true,
    this.avatarMargin = const EdgeInsets.only(right: 5.0),
    // its specyfic parameters
    // ignore: no-magic-number
    this.avatarMaxWidth = 32,
    // its specyfic parameters
    // ignore: no-magic-number
    this.avatarMaxHeight = 32,
  });
}
