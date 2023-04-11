import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the select single of the widget.
class SelectSingleSettings {
  /// The padding of the select single.
  /// Default value is [EdgeInsets.only(left: 7.0)].
  final EdgeInsetsGeometry? padding;

  /// The style of the text of the select single.
  /// Default value is [TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)].
  final TextStyle textStyle;

  /// The overflow of the text of the select single.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? textOverflow;

  /// The padding of the text of the select single.
  /// Default value is [null].
  final EdgeInsetsGeometry? textPadding;

  /// The extra info of the select single.
  /// Default value is [true].
  /// If [false] is passed, the extra info will not be shown.
  final bool showExtraInfo;

  /// The style of the extra info of the select single.
  /// Default value is [TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300)].
  final TextStyle extraInfoTextStyle;

  /// The overflow of the extra info of the select single.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? extraInfoTextOverflow;

  /// The padding of the extra info of the select single.
  /// Default value is [null].
  final EdgeInsetsGeometry? extraInfoPadding;

  /// The avatar of the select single.
  /// Default value is [true].
  /// If [false] is passed, the avatar will not be shown.
  final bool showAvatar;

  /// The margin of the avatar of the select single.
  /// Default value is [EdgeInsets.only(right: 5.0)].
  final EdgeInsetsGeometry? avatarMargin;

  /// The max width of the avatar of the select single.
  /// Default value is [32].
  final double? avatarMaxWidth;

  /// The max height of the avatar of the select single.
  /// Default value is [32].
  final double? avatarMaxHeight;

  /// The default style of the text of the select single.
  static const kDefaultTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  /// The default style of the extra info of the select single.
  static const kExtraInfoTextStyle = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );

  /// Creating an argument constructor of [SelectSingleSettings] class.
  const SelectSingleSettings({
    this.padding = const EdgeInsets.only(left: 7.0),
    this.textStyle = kDefaultTextStyle,
    this.textOverflow = TextOverflow.ellipsis,
    this.textPadding,
    this.showExtraInfo = true,
    this.extraInfoTextStyle = kExtraInfoTextStyle,
    this.extraInfoTextOverflow = TextOverflow.ellipsis,
    this.extraInfoPadding,
    this.showAvatar = true,
    this.avatarMargin = const EdgeInsets.only(right: 5.0),
    // Its specyfic parameters.
    // ignore: no-magic-number
    this.avatarMaxWidth = 32,
    // Its specyfic parameters.
    // ignore: no-magic-number
    this.avatarMaxHeight = 32,
  });
}
