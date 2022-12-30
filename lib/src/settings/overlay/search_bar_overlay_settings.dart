import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the search bar of the widget in overlay mode.
class SearchBarOverlaySettings {
  /// The margin of the search bar of the widget in overlay mode.
  /// Default value is [EdgeInsets.all(4.0)].
  final EdgeInsetsGeometry? margin;

  /// The decoration of the search bar of the widget in overlay mode when it has focus.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration boxDecorationFocus;

  /// The decoration of the search bar of the widget in overlay mode when it has no focus.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration boxDecorationNoFocus;

  /// The cursor color of the search bar of the widget in overlay mode.
  /// Default value is [null],
  /// because the color of the icon is set by the [GlobalSettings].
  final Color? textFieldCursorColor;

  /// The autofocus of the search bar of the widget in overlay mode.
  /// Default value is [true].
  final bool textFieldAutofocus;

  /// The input decoration of the search bar of the widget in overlay mode when it has focus.
  /// Default value is [defaultTextFieldDecoration].
  final InputDecoration textFieldDecorationFocus;

  /// The input decoration of the search bar of the widget in overlay mode when it has no focus.
  /// Default value is [defaultTextFieldDecoration].
  final InputDecoration textFieldDecorationNoFocus;

  /// The visibility of the suffix icon of the search bar of the widget in overlay mode.
  /// Default value is [true].
  final bool textFieldDecorationSuffixIcon;

  /// The style of the search bar of the widget in overlay mode.
  /// Default value is [defaultTextFieldStyle].
  final TextStyle textFieldStyle;

  /// Default text field decoration.
  static const defaultTextFieldDecoration = InputDecoration(
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
    hintText: 'Search',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
  );

  /// Default text field style.
  static const defaultTextFieldStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Creating an argument constructor of [SearchBarOverlaySettings] class.
  const SearchBarOverlaySettings({
    this.margin = const EdgeInsets.all(4.0),
    this.boxDecorationFocus = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.boxDecorationNoFocus = const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    this.textFieldCursorColor,
    this.textFieldAutofocus = true,
    this.textFieldDecorationFocus = defaultTextFieldDecoration,
    this.textFieldDecorationNoFocus = defaultTextFieldDecoration,
    this.textFieldDecorationSuffixIcon = true,
    this.textFieldStyle = defaultTextFieldStyle,
  });
}
