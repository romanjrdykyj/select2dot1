import 'package:flutter/material.dart';

class SearchBarOverlaySettings {
  final EdgeInsetsGeometry? margin;
  final BoxDecoration boxDecorationFocus;
  final BoxDecoration boxDecorationNoFocus;
  final Color? textFieldCursorColor;
  final bool textFieldAutofocus;
  final InputDecoration textFieldDecorationFocus;
  final InputDecoration textFieldDecorationNoFocus;
  final bool textFieldDecorationSuffixIcon;
  final TextStyle textFieldStyle;

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

  static const defaultTextFieldStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

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
