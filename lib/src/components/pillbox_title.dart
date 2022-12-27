import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/pillbox_title_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class PillboxTitle extends StatefulWidget {
  final ValueNotifier<bool>? isVisibleOvarlay;
  final bool hover;
  final PillboxTitleBuilder? pillboxTitleBuilder;
  final PillboxTitleSettings pillboxTitleSettings;
  final GlobalSettings globalSettings;

  const PillboxTitle({
    super.key,
    required this.isVisibleOvarlay,
    required this.hover,
    required this.pillboxTitleBuilder,
    required this.pillboxTitleSettings,
    required this.globalSettings,
  });

  @override
  State<PillboxTitle> createState() => _PillboxTitleState();
}

class _PillboxTitleState extends State<PillboxTitle> {
  bool isFocus = false;

  @override
  void initState() {
    super.initState();

    widget.isVisibleOvarlay?.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    widget.isVisibleOvarlay?.removeListener(_onFocusChange);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pillboxTitleBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return widget.pillboxTitleBuilder!(
        context,
        PillboxTitleDetails(
          isVisibleOvarlay: widget.isVisibleOvarlay,
          hover: widget.hover,
          isFocus: isFocus,
          onFocusChange: _onFocusChange,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    if (widget.pillboxTitleSettings.title == null) {
      return const SizedBox();
    }

    return Container(
      padding: widget.pillboxTitleSettings.titlePadding,
      child: Text(
        // This can't be null anyways
        // ignore: avoid-non-null-assertion
        widget.pillboxTitleSettings.title!,
        style: _getTitleTextStyle(),
      ),
    );
  }

  TextStyle _getTitleTextStyle() {
    TextStyle textStyle = isFocus
        ? widget.pillboxTitleSettings.titleStyleFocus
        : widget.hover
            ? widget.pillboxTitleSettings.titleStyleHover
            : widget.pillboxTitleSettings.titleStyleDefault;

    if (textStyle.fontFamily == null) {
      textStyle =
          textStyle.copyWith(fontFamily: widget.globalSettings.fontFamily);
    }

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(
        color: isFocus
            ? widget.globalSettings.mainColor
            : widget.hover
                ? widget.globalSettings.activeColor
                : widget.globalSettings.inActiveColor,
      );
    }

    return textStyle;
  }

  void _onFocusChange() {
    if (widget.isVisibleOvarlay == null) {
      return;
    }

    if (mounted) {
      setState(() {
        // it cant be null anyways.
        // ignore: avoid-non-null-assertion
        isFocus = widget.isVisibleOvarlay!.value;
      });
    }
  }
}
