// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the select chip of the widget.
class SelectChipSettings {
  /// The height of the select chip.
  /// Default value is [32].
  final double? chipHeight;

  /// The decoration of the select chip.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration chipDecoration;

  /// The mouseCoursor of the select chip.
  /// Default value is [SystemMouseCursors.click].
  final MouseCursor iconMouseCursor;

  /// The padding of the icon of the select chip.
  /// Default value is [EdgeInsets.symmetric(horizontal: 12.0)].
  final EdgeInsetsGeometry? iconPadding;
  
  /// The icon of the select chip.
  /// Default value is [Icons.clear_rounded].
  final IconData iconData;

  /// The size of the icon of the select chip.
  /// Default value is [16.0].
  final double? iconSize;

  /// The color of the icon of the select chip.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? iconColor;

  /// The height of the divider of the select chip.
  /// Default value is [null],
  /// because the height of the divider is set by the [chipHeight] by default.
  final double? dividerHeight;

  /// The width of the divider of the select chip.
  /// Default value is [1].
  final double? dividerWidth;

  /// The color of the divider of the select chip.
  /// Default value is [null],
  /// because the color of the divider is set by the [GlobalSettings].
  final Color? dividerColor;

  /// The mouseCoursor of the text of the select chip.
  /// Default value is [SystemMouseCursors.basic].
  final MouseCursor textMouseCursor;

  /// The constraints of the text box of the select chip.
  /// Default value is [BoxConstraints(maxWidth: 125)].
  final BoxConstraints? textBoxConstraints;

  /// The padding of the text of the select chip.
  /// Default value is [EdgeInsets.symmetric(horizontal: 4.0)].
  final EdgeInsetsGeometry? textPadding;

  /// The overflow of the text of the select chip.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? textOverflow;

  /// The style of the text of the select chip.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w400)].
  final TextStyle textStyle;

  /// The visibility of the avatar of the select chip.
  /// Default value is [true].
  /// If the value is [false], the avatar will not be displayed.
  final bool isAvatarVisible;

  /// The margin of the avatar of the select chip.
  /// Default value is [EdgeInsets.symmetric(horizontal: 4.0)].
  final EdgeInsetsGeometry? avatarMargin;

  /// The constraints (maxWidth) of the avatar of the select chip.
  /// Default value is [BoxConstraints(maxWidth: 25, maxHeight: 25)].
  final double? avatarMaxWidth;

  /// The constraints (maxHeight) of the avatar of the select chip.
  /// Default value is [BoxConstraints(maxWidth: 25, maxHeight: 25)].
  final double? avatarMaxHeight;

  /// The default style of the text of the select chip.
  static const defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [SelectChipSettings] class.
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
