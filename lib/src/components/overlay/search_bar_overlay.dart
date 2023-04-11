import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_bar_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class SearchBarOverlay extends StatefulWidget {
  final SearchController searchController;
  final bool isSearchable;
  final SearchBarOverlayBuilder? searchBarOverlayBuilder;
  final SearchBarOverlaySettings searchBarOverlaySettings;
  final GlobalSettings globalSettings;

  const SearchBarOverlay({
    super.key,
    required this.searchController,
    required this.isSearchable,
    required this.searchBarOverlayBuilder,
    required this.searchBarOverlaySettings,
    required this.globalSettings,
  });

  @override
  State<SearchBarOverlay> createState() => _SearchBarOverlayState();
}

class _SearchBarOverlayState extends State<SearchBarOverlay> {
  final FocusNode searchBarFocusNode = FocusNode();
  final TextEditingController searchBarController = TextEditingController();
  bool isFocus = true;

  @override
  void initState() {
    super.initState();
    isFocus = widget.searchBarOverlaySettings.textFieldAutofocus;
    if (widget.searchBarOverlaySettings.textFieldAutofocus) {
      searchBarFocusNode.requestFocus();
    }
    searchBarFocusNode.addListener(_focusOverlayController);
    searchBarController.addListener(_onChangedSearchBarOverlayController);
  }

  @override
  void dispose() {
    searchBarFocusNode.removeListener(_focusOverlayController);
    searchBarController.removeListener(_onChangedSearchBarOverlayController);
    searchBarFocusNode.dispose();
    searchBarController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.searchBarOverlayBuilder != null && widget.isSearchable) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.searchBarOverlayBuilder!(
        context,
        SearchBarOverlayDetails(
          searchController: widget.searchController,
          searchBarController: searchBarController,
          searchBarFocusNode: searchBarFocusNode,
          isFocus: isFocus,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return LimitedBox(
      // TODO: Let's do it!
      // It has to be limited box + visibility + enable property in TextField to correctly work with animation (IDK why) [I'm working on it.].
      maxHeight: widget.isSearchable ? double.infinity : 0,
      // I know it.
      // ignore: no-equal-arguments
      maxWidth: widget.isSearchable ? double.infinity : 0,
      child: Visibility(
        visible: widget.isSearchable,
        maintainAnimation: true,
        maintainSize: true,
        maintainState: true,
        child: Container(
          margin: widget.searchBarOverlaySettings.margin,
          decoration: _getDecoration(),
          child: RawKeyboardListener(
            focusNode: FocusNode(),
            autofocus: true,
            child: Shortcuts(
              shortcuts: <LogicalKeySet, Intent>{
                LogicalKeySet(LogicalKeyboardKey.escape): const ClearIntent(),
              },
              child: Actions(
                actions: <Type, Action<Intent>>{
                  ClearIntent: ClearAction(searchBarController),
                },
                child: TextField(
                  focusNode: searchBarFocusNode,
                  controller: searchBarController,
                  cursorColor:
                      widget.searchBarOverlaySettings.textFieldCursorColor ??
                          widget.globalSettings.mainColor,
                  autofocus: widget.searchBarOverlaySettings.textFieldAutofocus,
                  enabled: widget.isSearchable,
                  decoration: _getTextFieldDecoration(),
                  style: _getTextFieldStyle(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _getTextFieldDecoration() {
    InputDecoration inputDecoration = isFocus
        ? widget.searchBarOverlaySettings.textFieldDecorationFocus
        : widget.searchBarOverlaySettings.textFieldDecorationNoFocus;

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
        suffixIcon:
            widget.searchBarOverlaySettings.textFieldDecorationSuffixIcon
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: searchBarController.clear,
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
          fontWeight: FontWeight.w100,
          color: widget.globalSettings.inActiveColor,
        ),
      );
    }

    return inputDecoration;
  }

  TextStyle _getTextFieldStyle() {
    TextStyle textFieldStyle = widget.searchBarOverlaySettings.textFieldStyle;

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
        ? widget.searchBarOverlaySettings.boxDecorationFocus
        : widget.searchBarOverlaySettings.boxDecorationNoFocus;

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

  void _focusOverlayController() {
    if (mounted) {
      setState(() {
        isFocus = searchBarFocusNode.hasFocus;
      });
    }
  }

  void _onChangedSearchBarOverlayController() {
    widget.searchController.findSearchDataResults(searchBarController.text);
  }
}

class ClearIntent extends Intent {
  const ClearIntent();
}

class ClearAction extends Action<ClearIntent> {
  final TextEditingController searchBarOverlayController;

  ClearAction(this.searchBarOverlayController);

  @override
  // Its nessasary to override this method.
  // ignore: no-object-declaration
  Object? invoke(covariant ClearIntent intent) {
    searchBarOverlayController.clear();

    return null;
  }
}
