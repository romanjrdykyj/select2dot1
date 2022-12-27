import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/pillbox_icon_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class PillboxIcon extends StatefulWidget {
  final ValueNotifier<bool>? isVisibleOvarlay;
  final bool hover;
  final PillboxIconBuilder? pillboxIconBuilder;
  final PillboxIconSettings pillboxIconSettings;
  final GlobalSettings globalSettings;
  const PillboxIcon({
    super.key,
    required this.isVisibleOvarlay,
    required this.hover,
    required this.pillboxIconBuilder,
    required this.pillboxIconSettings,
    required this.globalSettings,
  });

  @override
  State<PillboxIcon> createState() => _PillboxIconState();
}

class _PillboxIconState extends State<PillboxIcon> {
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
    if (widget.pillboxIconBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return widget.pillboxIconBuilder!(
        context,
        PillboxIconDetails(
          isVisibleOvarlay: widget.isVisibleOvarlay,
          hover: widget.hover,
          isFocus: isFocus,
          onFocusChange: _onFocusChange,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    if (widget.pillboxIconSettings.iconData == null) {
      return const SizedBox();
    }

    return Container(
      padding: widget.pillboxIconSettings.padding,
      child: Icon(
        widget.pillboxIconSettings.iconData,
        size: widget.pillboxIconSettings.size,
        color: _getBorderColor(),
      ),
    );
  }

  Color _getBorderColor() {
    if (isFocus) {
      return widget.pillboxIconSettings.focusColor ??
          widget.globalSettings.mainColor;
    }

    if (widget.hover) {
      return widget.pillboxIconSettings.hoverColor ??
          widget.globalSettings.activeColor;
    }

    return widget.pillboxIconSettings.defaultColor ??
        widget.globalSettings.inActiveColor;
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
