// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';

class SelectChipSettings {
  final double? chipHeight;
  final BoxDecoration chipDecoration;
  final MouseCursor iconMouseCursor;
  final EdgeInsetsGeometry? iconPadding;
  final IconData iconData;
  final double? iconSize;
  final Color? iconColor;
  final double? dividerHeight;
  final double? dividerWidth;
  final Color? dividerColor;
  final MouseCursor textMouseCursor;
  final BoxConstraints? textBoxConstraints;
  final EdgeInsetsGeometry? textPadding;
  final TextOverflow? textOverflow;
  final TextStyle textStyle;
  final bool isAvatarVisible;
  final EdgeInsetsGeometry? avatarMargin;
  final double? avatarMaxWidth;
  final double? avatarMaxHeight;

  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  const SelectChipSettings({
    this.chipHeight = 32,
    this.chipDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.iconMouseCursor = SystemMouseCursors.click,
    this.iconPadding = const EdgeInsets.symmetric(horizontal: 1.0),
    this.iconData = Icons.clear_rounded,
    this.iconSize = 16.0,
    this.iconColor,
    double? dividerHeight,
    this.dividerWidth = 1,
    this.dividerColor,
    this.textMouseCursor = SystemMouseCursors.basic,
    this.textBoxConstraints = const BoxConstraints(maxWidth: 125),
    this.textPadding = const EdgeInsets.symmetric(horizontal: 4.0),
    this.textOverflow = TextOverflow.ellipsis,
    this.textStyle = defaultTextStyle,
    this.isAvatarVisible = true,
    this.avatarMargin = const EdgeInsets.only(left: 4.0, top: 3.0, bottom: 3.0),
    this.avatarMaxWidth,
    this.avatarMaxHeight,
  }) : dividerHeight = dividerHeight ?? chipHeight;
}
