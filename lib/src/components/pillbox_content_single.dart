import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/pillbox_icon.dart';
import 'package:select2dot1/src/components/select_empty_info.dart';
import 'package:select2dot1/src/components/select_single.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/pillbox_icon_settings.dart';
import 'package:select2dot1/src/settings/pillbox_settings.dart';
import 'package:select2dot1/src/settings/select_empty_info_settings.dart';
import 'package:select2dot1/src/settings/select_overload_info_settings.dart';
import 'package:select2dot1/src/settings/select_single_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class PillboxContentSingle extends StatefulWidget {
  final SelectDataController selectDataController;
  final bool hover;
  final ValueNotifier<bool>? isVisibleOvarlay;
  final PillboxContentSingleBuilder? pillboxContentSingleBuilder;
  final PillboxSettings pillboxSettings;
  final PillboxIconBuilder? pillboxIconBuilder;
  final PillboxIconSettings pillboxIconSettings;
  final SelectSingleBuilder? selectSingleBuilder;
  final SelectSingleSettings selectSingleSettings;
  final SelectOverloadInfoBuilder? selectOverloadInfoBuilder;
  final SelectOverloadInfoSettings selectOverloadInfoSettings;
  final SelectEmptyInfoBuilder? selectEmptyInfoBuilder;
  final SelectEmptyInfoSettings selectEmptyInfoSettings;
  final GlobalSettings globalSettings;

  const PillboxContentSingle({
    super.key,
    required this.selectDataController,
    required this.hover,
    required this.isVisibleOvarlay,
    required this.pillboxContentSingleBuilder,
    required this.pillboxSettings,
    required this.pillboxIconBuilder,
    required this.pillboxIconSettings,
    required this.selectSingleBuilder,
    required this.selectSingleSettings,
    required this.selectOverloadInfoBuilder,
    required this.selectOverloadInfoSettings,
    required this.selectEmptyInfoBuilder,
    required this.selectEmptyInfoSettings,
    required this.globalSettings,
  });

  @override
  State<PillboxContentSingle> createState() => _PillboxContentSingleState();
}

class _PillboxContentSingleState extends State<PillboxContentSingle> {
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
    if (widget.pillboxContentSingleBuilder != null) {
      // it cant be null because of assert above
      // ignore: avoid-non-null-assertion
      return widget.pillboxContentSingleBuilder!(
        context,
        PillboxContentSingleDetails(
          selectDataController: widget.selectDataController,
          hover: widget.hover,
          isVisibleOvarlay: widget.isVisibleOvarlay,
          isFocus: isFocus,
          onFocusChange: _onFocusChange,
          selectSingle: _selectSingle,
          selectEmptyInfo: _selectEmptyInfo,
          pillboxIcon: _pillboxIcon,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Container(
      constraints: widget.pillboxSettings.constraints,
      padding: widget.pillboxSettings.padding,
      margin: widget.pillboxSettings.margin,
      decoration: _getDecoration(),
      child: Row(
        children: [
          Expanded(
            child: widget.selectDataController.getSelectedList.isEmpty
                ? SelectEmptyInfo(
                    selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
                    selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
                    globalSettings: widget.globalSettings,
                  )
                : SelectSingle(
                    singleItemCategory:
                        widget.selectDataController.getSelectedList.first,
                    selectDataController: widget.selectDataController,
                    selectSingleBuilder: widget.selectSingleBuilder,
                    selectSingleSettings: widget.selectSingleSettings,
                    globalSettings: widget.globalSettings,
                  ),
          ),
          if (widget.pillboxIconSettings.iconData != null)
            PillboxIcon(
              hover: widget.hover,
              isVisibleOvarlay: widget.isVisibleOvarlay,
              pillboxIconBuilder: widget.pillboxIconBuilder,
              pillboxIconSettings: widget.pillboxIconSettings,
              globalSettings: widget.globalSettings,
            ),
        ],
      ),
    );
  }

  BoxDecoration _getDecoration() {
    BoxDecoration decoration = isFocus
        ? widget.pillboxSettings.focusDecoration
        : widget.hover
            ? widget.pillboxSettings.hoverDecoration
            : widget.selectDataController.getSelectedList.isNotEmpty
                ? widget.pillboxSettings.activeDecoration
                : widget.pillboxSettings.defaultDecoration;

    if (decoration.border == null) {
      decoration = decoration.copyWith(
        border: Border.fromBorderSide(BorderSide(color: _getBorderColor())),
      );
    }

    return decoration;
  }

  Color _getBorderColor() {
    if (isFocus) {
      return widget.globalSettings.mainColor;
    }

    if (widget.hover) {
      return widget.globalSettings.activeColor;
    }

    if (widget.selectDataController.getSelectedList.isNotEmpty) {
      return widget.globalSettings.mainColor;
    }

    return widget.globalSettings.inActiveColor;
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

  Widget _selectSingle() => SelectSingle(
        singleItemCategory: widget.selectDataController.getSelectedList.first,
        selectDataController: widget.selectDataController,
        selectSingleBuilder: widget.selectSingleBuilder,
        selectSingleSettings: widget.selectSingleSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _selectEmptyInfo() => SelectEmptyInfo(
        selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
        selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _pillboxIcon() => PillboxIcon(
        hover: widget.hover,
        isVisibleOvarlay: widget.isVisibleOvarlay,
        pillboxIconBuilder: widget.pillboxIconBuilder,
        pillboxIconSettings: widget.pillboxIconSettings,
        globalSettings: widget.globalSettings,
      );
}
