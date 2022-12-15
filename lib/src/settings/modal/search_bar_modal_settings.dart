import 'package:flutter/material.dart';

class SearchBarModalSettings {
  final EdgeInsetsGeometry? margin;
  final BoxDecoration boxDecorationFocus;
  final BoxDecoration boxDecorationNoFocus;
  final Color? textFieldCursorColor;
  final bool textFieldAutofocus;
  final InputDecoration textFieldDecorationFocus;
  final InputDecoration textFieldDecorationNoFocus;
  final bool textFieldDecorationSuffixIcon;
  final TextStyle textFieldStyle;
  final double heightReplacement;
  final Color? colorReplecment;
  final EdgeInsetsGeometry? marginReplacement;

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
