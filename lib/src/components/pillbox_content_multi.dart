import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/pillbox_icon.dart';
import 'package:select2dot1/src/components/select_chip.dart';
import 'package:select2dot1/src/components/select_empty_info.dart';
import 'package:select2dot1/src/components/select_overload_info.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/pillbox_content_multi_settings.dart';
import 'package:select2dot1/src/settings/pillbox_icon_settings.dart';
import 'package:select2dot1/src/settings/pillbox_settings.dart';
import 'package:select2dot1/src/settings/select_chip_settings.dart';
import 'package:select2dot1/src/settings/select_empty_info_settings.dart';
import 'package:select2dot1/src/settings/select_overload_info_settings.dart';
import 'package:select2dot1/src/settings/select_single_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class PillboxContentMulti extends StatefulWidget {
  final SelectDataController selectDataController;
  final bool hover;
  final ValueNotifier<bool>? isVisibleOvarlay;
  final PillboxSettings pillboxSettings;
  final PillboxContentMultiBuilder? pillboxContentMultiBuilder;
  final PillboxContentMultiSettings pillboxContentMultiSettings;
  final PillboxIconBuilder? pillboxIconBuilder;
  final PillboxIconSettings pillboxIconSettings;
  final SelectChipBuilder? selectChipBuilder;
  final SelectChipSettings selectChipSettings;
  final SelectSingleBuilder? selectSingleBuilder;
  final SelectSingleSettings selectSingleSettings;
  final SelectOverloadInfoBuilder? selectOverloadInfoBuilder;
  final SelectOverloadInfoSettings selectOverloadInfoSettings;
  final SelectEmptyInfoBuilder? selectEmptyInfoBuilder;
  final SelectEmptyInfoSettings selectEmptyInfoSettings;
  final GlobalSettings globalSettings;

  const PillboxContentMulti({
    super.key,
    required this.selectDataController,
    required this.hover,
    required this.isVisibleOvarlay,
    required this.pillboxSettings,
    required this.pillboxContentMultiBuilder,
    required this.pillboxContentMultiSettings,
    required this.pillboxIconBuilder,
    required this.pillboxIconSettings,
    required this.selectChipBuilder,
    required this.selectChipSettings,
    required this.selectSingleBuilder,
    required this.selectSingleSettings,
    required this.selectOverloadInfoBuilder,
    required this.selectOverloadInfoSettings,
    required this.selectEmptyInfoBuilder,
    required this.selectEmptyInfoSettings,
    required this.globalSettings,
  });

  @override
  State<PillboxContentMulti> createState() => _PillboxContentMultiState();
}

class _PillboxContentMultiState extends State<PillboxContentMulti> {
  final ScrollController scrollController = ScrollController();
  bool isFocus = false;

  @override
  void initState() {
    super.initState();

    widget.isVisibleOvarlay?.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    scrollController.dispose();
    widget.isVisibleOvarlay?.removeListener(_onFocusChange);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pillboxContentMultiBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return widget.pillboxContentMultiBuilder!(
        context,
        PillboxContentMultiDetails(
          selectDataController: widget.selectDataController,
          hover: widget.hover,
          isVisibleOvarlay: widget.isVisibleOvarlay,
          isFocus: isFocus,
          onFocusChange: _onFocusChange,
          selectChip: _selectChip,
          selectEmptyInfo: _selectEmptyInfo,
          selectOverloadInfo: _selectOverloadInfo,
          pillboxIcon: _pillboxIcon,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Scrollbar(
      controller: scrollController,
      thickness:
          widget.pillboxContentMultiSettings.pillboxLayout == PillboxLayout.wrap
              ? 0
              : widget.pillboxContentMultiSettings.scrollBarThickness,
      child: Container(
        constraints: widget.pillboxSettings.constraints,
        padding: widget.pillboxSettings.padding,
        decoration: _getDecoration(),
        child: Row(
          children: [
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: SingleChildScrollView(
                  scrollDirection:
                      widget.pillboxContentMultiSettings.pillboxLayout ==
                              PillboxLayout.wrap
                          ? Axis.vertical
                          : Axis.horizontal,
                  controller: scrollController,
                  child: Wrap(
                    spacing: widget.pillboxContentMultiSettings.spacingChip,
                    runSpacing:
                        widget.pillboxContentMultiSettings.pillboxLayout ==
                                PillboxLayout.wrap
                            ? widget.pillboxContentMultiSettings.runSpacingChip
                            : 0.0,
                    children: widget.selectDataController.selectedList.isNotEmpty
                        ? widget.selectDataController.selectedList.length >=
                                widget.pillboxContentMultiSettings.pillboxOverload
                            ? [
                                SelectOverloadInfo(
                                  countSelected: widget
                                      .selectDataController.selectedList.length,
                                  selectOverloadInfoBuilder:
                                      widget.selectOverloadInfoBuilder,
                                  selectOverloadInfoSettings:
                                      widget.selectOverloadInfoSettings,
                                  globalSettings: widget.globalSettings,
                                ),
                              ]
                            : widget.selectDataController.selectedList.reversed
                                .map(
                                  (i) => SelectChip(
                                    singleItemCategory: i,
                                    selectDataController:
                                        widget.selectDataController,
                                    selectChipBuilder: widget.selectChipBuilder,
                                    selectChipSettings: widget.selectChipSettings,
                                    globalSettings: widget.globalSettings,
                                  ),
                                )
                                .toList()
                        : [
                            SelectEmptyInfo(
                              selectEmptyInfoBuilder:
                                  widget.selectEmptyInfoBuilder,
                              selectEmptyInfoSettings:
                                  widget.selectEmptyInfoSettings,
                              globalSettings: widget.globalSettings,
                            ),
                          ],
                  ),
                ),
              ),
            ),
            PillboxIcon(
              hover: widget.hover,
              isVisibleOvarlay: widget.isVisibleOvarlay,
              pillboxIconBuilder: widget.pillboxIconBuilder,
              pillboxIconSettings: widget.pillboxIconSettings,
              globalSettings: widget.globalSettings,
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _getDecoration() {
    BoxDecoration decoration = isFocus
        ? widget.pillboxSettings.focusDecoration
        : widget.hover
            ? widget.pillboxSettings.hoverDecoration
            : widget.selectDataController.selectedList.isNotEmpty
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

    if (widget.selectDataController.selectedList.isNotEmpty) {
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

  Widget _selectChip(SingleItemCategoryModel i) => SelectChip(
        singleItemCategory: i,
        selectDataController: widget.selectDataController,
        selectChipBuilder: widget.selectChipBuilder,
        selectChipSettings: widget.selectChipSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _selectEmptyInfo() => SelectEmptyInfo(
        selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
        selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _selectOverloadInfo(int count) => SelectOverloadInfo(
        countSelected: count,
        selectOverloadInfoBuilder: widget.selectOverloadInfoBuilder,
        selectOverloadInfoSettings: widget.selectOverloadInfoSettings,
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
