import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/pillbox_content.dart';
import 'package:select2dot1/src/components/pillbox_title.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/pillbox_content_multi_settings.dart';
import 'package:select2dot1/src/settings/pillbox_icon_settings.dart';
import 'package:select2dot1/src/settings/pillbox_settings.dart';
import 'package:select2dot1/src/settings/pillbox_title_settings.dart';
import 'package:select2dot1/src/settings/select_chip_settings.dart';
import 'package:select2dot1/src/settings/select_empty_info_settings.dart';
import 'package:select2dot1/src/settings/select_overload_info_settings.dart';
import 'package:select2dot1/src/settings/select_single_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class Pillbox extends StatefulWidget {
  final SelectDataController selectDataController;
  final void Function() onTap;
  final ValueNotifier<bool>? isVisibleOverlay;
  final LayerLink? pillboxLayerLink;
  final PillboxTitleBuilder? pillboxTitleBuilder;
  final PillboxTitleSettings pillboxTitleSettings;
  final PillboxBuilder? pillboxBuilder;
  final PillboxSettings pillboxSettings;
  final PillboxContentSingleBuilder? pillboxContentSingleBuilder;
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

  const Pillbox.modal({
    super.key,
    required this.selectDataController,
    required this.onTap,
    this.isVisibleOverlay,
    this.pillboxLayerLink,
    required this.pillboxTitleBuilder,
    required this.pillboxTitleSettings,
    required this.pillboxBuilder,
    required this.pillboxSettings,
    required this.pillboxContentSingleBuilder,
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
  }) : assert(
          pillboxLayerLink == null,
          'Pillbox.modal: pillboxLayerLink must be null, because it is not used in modal mode.',
        );

  const Pillbox.overlay({
    super.key,
    required this.selectDataController,
    required this.onTap,
    required this.isVisibleOverlay,
    required this.pillboxLayerLink,
    required this.pillboxTitleBuilder,
    required this.pillboxTitleSettings,
    required this.pillboxBuilder,
    required this.pillboxSettings,
    required this.pillboxContentSingleBuilder,
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
  State<Pillbox> createState() => _PillboxState();
}

class _PillboxState extends State<Pillbox> {
  bool hover = false;

  @override
  void initState() {
    super.initState();
    widget.selectDataController.addListener(_refreshState);
  }

  @override
  void dispose() {
    widget.selectDataController.removeListener(_refreshState);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pillboxBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.pillboxBuilder!(
        context,
        PillboxDetails(
          selectDataController: widget.selectDataController,
          showDropdown: widget.onTap,
          isVisibleOverlay: widget.isVisibleOverlay,
          pillboxLayerLink: widget.pillboxLayerLink,
          hover: hover,
          pillboxTitle: _pillboxTitle,
          pillboxContent: _pillboxContent,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        mouseCursor: widget.pillboxSettings.mouseCursor,
        onHover: (hoverState) =>
            mounted ? setState(() => hover = hoverState) : null,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        // Its ok.
        // ignore: no-equal-arguments
        focusColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PillboxTitle(
              isVisibleOvarlay: widget.isVisibleOverlay,
              hover: hover,
              pillboxTitleBuilder: widget.pillboxTitleBuilder,
              pillboxTitleSettings: widget.pillboxTitleSettings,
              globalSettings: widget.globalSettings,
            ),
            PillboxContent(
              selectDataController: widget.selectDataController,
              hover: hover,
              isVisibleOvarlay: widget.isVisibleOverlay,
              pillboxLayerLink: widget.pillboxLayerLink,
              pillboxContentSingleBuilder: widget.pillboxContentSingleBuilder,
              pillboxSettings: widget.pillboxSettings,
              pillboxContentMultiBuilder: widget.pillboxContentMultiBuilder,
              pillboxContentMultiSettings: widget.pillboxContentMultiSettings,
              pillboxIconBuilder: widget.pillboxIconBuilder,
              pillboxIconSettings: widget.pillboxIconSettings,
              selectChipBuilder: widget.selectChipBuilder,
              selectChipSettings: widget.selectChipSettings,
              selectSingleBuilder: widget.selectSingleBuilder,
              selectSingleSettings: widget.selectSingleSettings,
              selectOverloadInfoBuilder: widget.selectOverloadInfoBuilder,
              selectOverloadInfoSettings: widget.selectOverloadInfoSettings,
              selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
              selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
              globalSettings: widget.globalSettings,
            ),
          ],
        ),
      ),
    );
  }

  void _refreshState() {
    if (mounted) {
      // It's just call setState!
      // ignore: no-empty-block
      setState(() {});
    }
  }

  Widget _pillboxTitle() => PillboxTitle(
        isVisibleOvarlay: widget.isVisibleOverlay,
        hover: hover,
        pillboxTitleBuilder: widget.pillboxTitleBuilder,
        pillboxTitleSettings: widget.pillboxTitleSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _pillboxContent() => PillboxContent(
        selectDataController: widget.selectDataController,
        hover: hover,
        isVisibleOvarlay: widget.isVisibleOverlay,
        pillboxLayerLink: widget.pillboxLayerLink,
        pillboxContentSingleBuilder: widget.pillboxContentSingleBuilder,
        pillboxSettings: widget.pillboxSettings,
        pillboxContentMultiBuilder: widget.pillboxContentMultiBuilder,
        pillboxContentMultiSettings: widget.pillboxContentMultiSettings,
        pillboxIconBuilder: widget.pillboxIconBuilder,
        pillboxIconSettings: widget.pillboxIconSettings,
        selectChipBuilder: widget.selectChipBuilder,
        selectChipSettings: widget.selectChipSettings,
        selectSingleBuilder: widget.selectSingleBuilder,
        selectSingleSettings: widget.selectSingleSettings,
        selectOverloadInfoBuilder: widget.selectOverloadInfoBuilder,
        selectOverloadInfoSettings: widget.selectOverloadInfoSettings,
        selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
        selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
        globalSettings: widget.globalSettings,
      );
}
