import 'dart:async';

import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/search_bar_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class SearchBarModal extends StatefulWidget {
  final SearchControllerSelect2dot1 searchController;
  final bool isSearchable;
  final SearchBarModalBuilder? searchBarModalBuilder;
  final SearchBarModalSettings searchBarModalSettings;
  final GlobalSettings globalSettings;

  const SearchBarModal({
    super.key,
    required this.searchController,
    required this.isSearchable,
    required this.searchBarModalBuilder,
    required this.searchBarModalSettings,
    required this.globalSettings,
  });

  @override
  State<SearchBarModal> createState() => _SearchBarModalState();
}

class _SearchBarModalState extends State<SearchBarModal> {
  final FocusNode searchBarModalFocusNode = FocusNode();
  final TextEditingController searchBarModalController =
      TextEditingController();
  bool isFocus = false;

  @override
  void initState() {
    super.initState();
    isFocus = widget.searchBarModalSettings.textFieldAutofocus;
    if (widget.searchBarModalSettings.textFieldAutofocus) {
      searchBarModalFocusNode.requestFocus();
    }
    searchBarModalFocusNode.addListener(_focusModalController);
    searchBarModalController.addListener(_onChangedSearchBarModalController);
  }

  @override
  void dispose() {
    searchBarModalFocusNode.removeListener(_focusModalController);
    searchBarModalController.removeListener(_onChangedSearchBarModalController);
    searchBarModalFocusNode.dispose();
    searchBarModalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.searchBarModalBuilder != null && widget.isSearchable) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.searchBarModalBuilder!(
        context,
        SearchBarModalDetails(
          searchController: widget.searchController,
          searchBarModalFocusNode: searchBarModalFocusNode,
          searchBarModalController: searchBarModalController,
          isFocus: isFocus,
          focusModalController: _focusModalController,
          onChangedSearchBarController: _onChangedSearchBarModalController,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    if (!widget.isSearchable) {
      return Container(
        margin: widget.searchBarModalSettings.marginReplacement,
        height: widget.searchBarModalSettings.heightReplacement,
        width: double.infinity,
        color: widget.searchBarModalSettings.colorReplecment ??
            widget.globalSettings.activeColor,
      );
    }

    return Container(
      margin: widget.searchBarModalSettings.margin,
      decoration: _getDecoration(),
      child: TextField(
        focusNode: searchBarModalFocusNode,
        controller: searchBarModalController,
        cursorColor: widget.searchBarModalSettings.textFieldCursorColor ??
            widget.globalSettings.mainColor,
        autofocus: widget.searchBarModalSettings.textFieldAutofocus,
        decoration: _getTextFieldDecoration(),
        style: _getTextFieldStyle(),
      ),
    );
  }

  InputDecoration _getTextFieldDecoration() {
    InputDecoration inputDecoration = isFocus
        ? widget.searchBarModalSettings.textFieldDecorationFocus
        : widget.searchBarModalSettings.textFieldDecorationNoFocus;

    if (inputDecoration.focusColor == null) {
      inputDecoration = inputDecoration.copyWith(
        focusColor: widget.globalSettings.mainColor,
      );
    }

    if (inputDecoration.focusedBorder == null) {
      inputDecoration = inputDecoration.copyWith(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.globalSettings.mainColor,
            // Its specyfic parameters.
            // ignore: no-magic-number
            width: 2,
          ),
        ),
      );
    }

    if (inputDecoration.suffixIcon == null) {
      Color suffixIconColor = isFocus
          ? widget.globalSettings.mainColor
          : widget.globalSettings.inActiveColor;
      inputDecoration = inputDecoration.copyWith(
        suffixIcon: widget.searchBarModalSettings.textFieldDecorationSuffixIcon
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: searchBarModalController.clear,
                color: suffixIconColor,
              )
            : null,
      );
    }

    if (inputDecoration.hintStyle == null) {
      inputDecoration = inputDecoration.copyWith(
        hintStyle: TextStyle(
          // Its const.
          // ignore: no-magic-number
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: widget.globalSettings.inActiveColor,
        ),
      );
    }

    return inputDecoration;
  }

  TextStyle _getTextFieldStyle() {
    TextStyle textFieldStyle = widget.searchBarModalSettings.textFieldStyle;

    if (textFieldStyle.fontFamily == null) {
      textFieldStyle = textFieldStyle.copyWith(
        fontFamily: widget.globalSettings.fontFamily,
      );
    }

    if (textFieldStyle.color == null) {
      textFieldStyle = textFieldStyle.copyWith(
        color: widget.globalSettings.textColor,
      );
    }

    return textFieldStyle;
  }

  BoxDecoration _getDecoration() {
    BoxDecoration decoration = isFocus
        ? widget.searchBarModalSettings.boxDecorationFocus
        : widget.searchBarModalSettings.boxDecorationNoFocus;

    if (decoration.color == null) {
      decoration = decoration.copyWith(
        color: widget.globalSettings.backgroundColor,
      );
    }

    if (decoration.boxShadow == null) {
      decoration = decoration.copyWith(
        boxShadow: isFocus
            ? [
                BoxShadow(
                  color: widget.globalSettings.mainColor,
                  spreadRadius: 1.0,
                  // Its specyfic parameters.
                  // ignore: no-magic-number
                  blurRadius: 3.0,
                ),
              ]
            : [],
      );
    }

    return decoration;
  }

  void _focusModalController() {
    if (mounted) {
      setState(() {
        isFocus = searchBarModalFocusNode.hasFocus;
      });
    }
  }

  void _onChangedSearchBarModalController() {
    unawaited(
      widget.searchController
          .findSearchDataResults(searchBarModalController.text),
    );
  }
}
