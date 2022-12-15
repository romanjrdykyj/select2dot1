import 'package:flutter/material.dart';

class CategoryItemOverlaySettings {
  final MouseCursor mouseCursorSelect;
  final AlignmentGeometry? alignmentGeometry;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration defaultDecoration;
  final BoxDecoration hoverDecoration;
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
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const kExtraInfoTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  const CategoryItemOverlaySettings({
    this.mouseCursorSelect = SystemMouseCursors.click,
    this.alignmentGeometry = Alignment.centerLeft,
    this.constraints = const BoxConstraints(minHeight: 40),
    this.margin = const EdgeInsets.symmetric(horizontal: 4.0),
    this.defaultDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.hoverDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.iconDefaultColor,
    this.iconSelectedColor,
    this.iconData = Icons.check,
    this.iconPadding = const EdgeInsets.only(left: 4, right: 3),
    // its const.
    // ignore: no-magic-number
    this.iconSize = 16.0,
    this.iconAnimationDuration = const Duration(milliseconds: 400),
    this.iconAnimationCurve = Curves.easeInOutQuart,
    this.defaultTextStyle = kDefaultTextStyle,
    this.selectedTextStyle = kDefaultTextStyle,
    this.textPadding = const EdgeInsets.only(right: 25),
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
    this.avatarMaxWidth = 35.0,
    // its const.
    // ignore: no-magic-number
    this.avatarMaxHeight = 35.0,
  });
}
