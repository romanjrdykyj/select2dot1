import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the category item of list data view in modal mode.
class CategoryItemModalSettings {
  /// The alignment of the category item of list data view in modal mode.
  /// Default value is [Alignment.centerLeft].
  final AlignmentGeometry? alignmentGeometry;

  /// The constraints of the category item of list data view in modal mode.
  /// Default value is [BoxConstraints(minHeight: 40)].
  final BoxConstraints? constraints;

  /// The margin of the category item of list data view in modal mode.
  /// Default value is [null].
  final EdgeInsetsGeometry? margin;

  /// The decoration of the category item of list data view in modal mode.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration decoration;

  /// The border radius of the inkwell of the category item of list data view in modal mode.
  /// Default value is [BorderRadius.all(Radius.circular(5.0))].
  final BorderRadius? inkWellBorderRadius;

  /// The highlight color of the inkwell of the category item of list data view in modal mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? highlightColor;

  /// The splash color of the inkwell of the category item of list data view in modal mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? splashColor;

  /// The color of the icon of the category item of list data view in modal mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? iconDefaultColor;

  /// The color of the icon of the selected category item of list data view in modal mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? iconSelectedColor;

  /// The size of the icon of the category item of list data view in modal mode.
  /// Default value is [18.0].
  final double? iconSize;

  /// The icon data of the icon of the category item of list data view in modal mode.
  /// Default value is [Icons.check]
  final IconData? iconData;

  /// The padding of the icon of the category item of list data view in modal mode.
  /// Default value is [EdgeInsets.only(left: 1, right: 3)]
  final EdgeInsetsGeometry? iconPadding;

  /// The duration of the icon animation of the category item of list data view in modal mode.
  /// Default value is [Duration(milliseconds: 400)].
  final Duration iconAnimationDuration;

  /// The curve of the icon animation of the category item of list data view in modal mode.
  /// Default value is [Curves.easeInOutQuart].
  final Curve iconAnimationCurve;

  /// The default text style of the category item of list data view in modal mode.
  /// Default value is [TextStyle(fontSize: 18, fontWeight: FontWeight.w400)].
  final TextStyle defaultTextStyle;

  /// The selected text style of the category item of list data view in modal mode.
  /// Default value is [TextStyle(fontSize: 18, fontWeight: FontWeight.w400)].
  final TextStyle selectedTextStyle;

  /// The padding of the text of the category item of list data view in modal mode.
  /// Default value is [EdgeInsets.only(right: 15)].
  final EdgeInsetsGeometry? textPadding;

  /// The text overflow of the category item of list data view in modal mode.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? textOverflow;

  /// The extra info of the category item.
  /// Default value is [true].
  /// If [false], the extra info will be hidden.
  final bool showExtraInfo;

  /// The text style of the extra info of the category item of list data view in modal mode.
  /// Default value is [TextStyle(fontSize: 14, fontWeight: FontWeight.w300)].
  final TextStyle extraInfoTextStyle;

  /// The text overflow of the extra info of the category item of list data view in modal mode.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? extraInfoTextOverflow;

  /// The padding of the extra info of the category item of list data view in modal mode.
  /// Default value is [EdgeInsets.only(top: 1.0)].
  final EdgeInsetsGeometry? extraInfoPadding;

  /// The avatar of the category item.
  /// Default value is [true].
  /// If [false], the avatar will be hidden.
  final bool showAvatar;

  /// The margin of the avatar of the category item of list data view in modal mode.
  /// Default value is [EdgeInsets.only(top: 6.0, bottom: 6.0, right: 5.0)].
  final EdgeInsetsGeometry? avatarMargin;

  /// The width of the avatar.
  /// Default value is [35].
  final double? avatarMaxWidth;

  /// The height of the avatar.
  /// Default value is [35].
  final double? avatarMaxHeight;

  /// The default text style.
  static const kDefaultTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  /// The default extra info text style.
  static const kExtraInfoTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  /// Creating an argument constructor of [CategoryItemModalSettings] class.
  const CategoryItemModalSettings({
    this.alignmentGeometry = Alignment.centerLeft,
    this.constraints = const BoxConstraints(minHeight: 50),
    this.margin,
    this.decoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.inkWellBorderRadius = const BorderRadius.all(Radius.circular(5.0)),
    this.highlightColor,
    this.splashColor,
    this.iconDefaultColor,
    this.iconSelectedColor,
    this.iconData = Icons.check,
    this.iconPadding = const EdgeInsets.only(left: 1, right: 3),
    // its const.
    // ignore: no-magic-number
    this.iconSize = 18.0,
    this.iconAnimationDuration = const Duration(milliseconds: 400),
    this.iconAnimationCurve = Curves.easeInOutQuart,
    this.defaultTextStyle = kDefaultTextStyle,
    this.selectedTextStyle = kDefaultTextStyle,
    this.textPadding = const EdgeInsets.only(
      right: 15,
    ),
    this.textOverflow = TextOverflow.ellipsis,
    this.showExtraInfo = true,
    this.extraInfoTextStyle = kExtraInfoTextStyle,
    this.extraInfoTextOverflow = TextOverflow.ellipsis,
    this.extraInfoPadding = const EdgeInsets.only(top: 1.0),
    this.showAvatar = true,
    this.avatarMargin =
        const EdgeInsets.only(top: 6.0, bottom: 6.0, right: 5.0),
    // its const.
    // ignore: no-magic-number
    this.avatarMaxWidth = 40.0,
    // its const.
    // ignore: no-magic-number
    this.avatarMaxHeight = 40.0,
  });
}
