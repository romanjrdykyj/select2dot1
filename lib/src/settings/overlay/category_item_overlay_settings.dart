import 'package:flutter/material.dart';

  /// This is a class which contains all the settings of the category item of list data view in overlay mode.
class CategoryItemOverlaySettings {
  /// The mouse cursor when the mouse is hovering over the category item.
  /// Default value is [SystemMouseCursors.click].
  final MouseCursor mouseCursorSelect;

  /// The alignment of the category item.
  /// Default value is [Alignment.centerLeft].
  final AlignmentGeometry? alignmentGeometry;

  /// The constraints of the category item.
  /// Default value is [BoxConstraints(minHeight: 40)].
  final BoxConstraints? constraints;

  /// The margin of the category item.
  /// Default value is [EdgeInsets.symmetric(horizontal: 4.0)].
  final EdgeInsetsGeometry? margin;

  /// The decoration of the category item.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration defaultDecoration;

  /// The decoration of the category item when the mouse is hovering over it.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration hoverDecoration;

  /// The default color of the icon.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? iconDefaultColor;

  /// The selected color of the icon.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? iconSelectedColor;

  /// The size of the icon.
  /// Default value is [16.0].
  final double? iconSize;

  /// The icon data of the icon.
  /// Default value is [Icons.check]
  final IconData? iconData;

  /// The padding of the icon.
  /// Default value is [EdgeInsets.only(left: 4, right: 3)].
  final EdgeInsetsGeometry? iconPadding;

  /// The duration of the icon animation.
  /// Default value is [Duration(milliseconds: 400)].
  final Duration iconAnimationDuration;

  /// The curve of the icon animation.
  /// Default value is [Curves.easeInOutQuart].
  final Curve iconAnimationCurve;

  /// Default text style of the category item.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w400)].
  final TextStyle defaultTextStyle;

  /// Selected text style of the category item.
  /// Default value is [TextStyle(fontSize: 16, fontWeight: FontWeight.w400)].
  final TextStyle selectedTextStyle;

  /// The padding of the text.
  /// Default value is [EdgeInsets.only(right: 25)].
  final EdgeInsetsGeometry? textPadding;

  /// The text overflow of the text.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? textOverflow;

  /// The extra info of the category item.  
  /// Default value is [true].
  /// If [false], the extra info will be hidden.
  final bool showExtraInfo;

  /// The text style of the extra info.
  /// Default value is [TextStyle(fontSize: 12, fontWeight: FontWeight.w400)].
  final TextStyle extraInfoTextStyle;

  /// The text overflow of the extra info.
  /// Default value is [TextOverflow.ellipsis].
  final TextOverflow? extraInfoTextOverflow;

  /// The padding of the extra info.
  /// Default value is [EdgeInsets.only(top: 1.0)].
  final EdgeInsetsGeometry? extraInfoPadding;

  /// The avatar of the category item.
  /// Default value is [true].
  /// If [false], the avatar will be hidden.
  final bool showAvatar;

  /// The margin of the avatar.
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
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// The default extra info text style.
  static const kExtraInfoTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [CategoryItemOverlaySettings] class.
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
