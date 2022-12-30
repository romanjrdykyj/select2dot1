import 'package:flutter/material.dart';

/// This is a class which contains all the settings of the search bar content (modal) of the widget.
class SearchBarModalSettings {
  /// The margin of the search bar.
  /// Default value is [EdgeInsets.only(top: 10.0, bottom: 1)].
  final EdgeInsetsGeometry? margin;

  /// The decoration of the search bar when it is focused.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration boxDecorationFocus;

  /// The decoration of the search bar when it is not focused.
  /// Default value is [BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)))].
  final BoxDecoration boxDecorationNoFocus;

  /// The cursor color of the text field.
  /// Default value is [null].
  /// Because the cursor color of the text field is set by the [GlobalSettings].
  final Color? textFieldCursorColor;

  /// The autofocus of the text field.
  /// Default value is [false].
  final bool textFieldAutofocus;

  /// The decoration of the text field when it is focused.
  /// Default value is [defaultTextFieldDecoration].
  final InputDecoration textFieldDecorationFocus;

  /// The decoration of the text field when it is not focused.
  /// Default value is [defaultTextFieldDecoration].
  final InputDecoration textFieldDecorationNoFocus;

  /// The suffix icon of the text field.
  /// Default value is [true].
  /// If you want to hide the suffix icon, set it to [false].
  final bool textFieldDecorationSuffixIcon;

  /// The style of the text field.
  /// Default value is [defaultTextFieldStyle].
  final TextStyle textFieldStyle;

  /// The height of the search bar.
  /// Default value is [1].
  final double heightReplacement;

  /// The color of the search bar.
  /// Default value is [null].
  /// Because the color of the search bar is set by the [GlobalSettings].
  final Color? colorReplecment;

  /// The margin of the search bar.
  /// Default value is [EdgeInsets.only(top: 10, bottom: 1)].
  final EdgeInsetsGeometry? marginReplacement;

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

  /// Creating an argument constructor of [SearchBarModalSettings] class.
  const SearchBarModalSettings({
    this.margin = const EdgeInsets.only(top: 10.0, bottom: 1),
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
    this.textFieldAutofocus = false,
    this.textFieldDecorationFocus = defaultTextFieldDecoration,
    this.textFieldDecorationNoFocus = defaultTextFieldDecoration,
    this.textFieldDecorationSuffixIcon = true,
    this.textFieldStyle = defaultTextFieldStyle,
    this.heightReplacement = 1,
    this.colorReplecment,
    this.marginReplacement = const EdgeInsets.only(top: 10, bottom: 1),
  });
}
