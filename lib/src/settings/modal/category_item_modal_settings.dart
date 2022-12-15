import 'package:flutter/material.dart';

class CategoryItemModalSettings {
  final AlignmentGeometry? alignmentGeometry;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration decoration;
  final BorderRadius? inkWellBorderRadius;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? iconDefaultColor;
  final Color? iconSelectedColor;
  final double? iconSize;
  final IconData? iconData;
  final EdgeInsetsGeometry? iconPadding;
  final Duration iconAnimationDuration;
  final Curve iconAnimationCurve;
  final TextStyle defaultTextStyle;
  final TextStyle selectedTextStyle;
  final EdgeInsetsGeometry? textPadding;
  final TextOverflow? textOverflow;
  final bool showExtraInfo;
  final TextStyle extraInfoTextStyle;
  final TextOverflow? extraInfoTextOverflow;
  final EdgeInsetsGeometry? extraInfoPadding;
  final bool showAvatar;
  final EdgeInsetsGeometry? avatarMargin;
  final double? avatarMaxWidth;
  final double? avatarMaxHeight;

  static const kDefaultTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const kExtraInfoTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

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
