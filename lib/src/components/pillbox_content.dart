import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/pillbox_content_multi.dart';
import 'package:select2dot1/src/components/pillbox_content_single.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/pillbox_content_multi_settings.dart';
import 'package:select2dot1/src/settings/pillbox_icon_settings.dart';
import 'package:select2dot1/src/settings/pillbox_settings.dart';
import 'package:select2dot1/src/settings/select_chip_settings.dart';
import 'package:select2dot1/src/settings/select_empty_info_settings.dart';
import 'package:select2dot1/src/settings/select_overload_info_settings.dart';
import 'package:select2dot1/src/settings/select_single_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class PillboxContent extends StatelessWidget {
  final SelectDataController selectDataController;
  final bool hover;
  final ValueNotifier<bool>? isVisibleOvarlay;
  final LayerLink? pillboxLayerLink;
  final PillboxContentSingleBuilder? pillboxContentSingleBuilder;
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

  const PillboxContent({
    super.key,
    required this.selectDataController,
    required this.hover,
    required this.isVisibleOvarlay,
    required this.pillboxLayerLink,
    required this.pillboxContentSingleBuilder,
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
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android) {
      return selectDataController.getIsMultiSelect
          ? PillboxContentMulti(
              selectDataController: selectDataController,
              hover: hover,
              isVisibleOvarlay: isVisibleOvarlay,
              pillboxSettings: pillboxSettings,
              pillboxContentMultiBuilder: pillboxContentMultiBuilder,
              pillboxContentMultiSettings: pillboxContentMultiSettings,
              pillboxIconBuilder: pillboxIconBuilder,
              pillboxIconSettings: pillboxIconSettings,
              selectChipBuilder: selectChipBuilder,
              selectChipSettings: selectChipSettings,
              selectSingleBuilder: selectSingleBuilder,
              selectSingleSettings: selectSingleSettings,
              selectOverloadInfoBuilder: selectOverloadInfoBuilder,
              selectOverloadInfoSettings: selectOverloadInfoSettings,
              selectEmptyInfoBuilder: selectEmptyInfoBuilder,
              selectEmptyInfoSettings: selectEmptyInfoSettings,
              globalSettings: globalSettings,
            )
          : PillboxContentSingle(
              selectDataController: selectDataController,
              hover: hover,
              isVisibleOvarlay: isVisibleOvarlay,
              pillboxContentSingleBuilder: pillboxContentSingleBuilder,
              pillboxSettings: pillboxSettings,
              pillboxIconBuilder: pillboxIconBuilder,
              pillboxIconSettings: pillboxIconSettings,
              selectSingleBuilder: selectSingleBuilder,
              selectSingleSettings: selectSingleSettings,
              selectOverloadInfoBuilder: selectOverloadInfoBuilder,
              selectOverloadInfoSettings: selectOverloadInfoSettings,
              selectEmptyInfoBuilder: selectEmptyInfoBuilder,
              selectEmptyInfoSettings: selectEmptyInfoSettings,
              globalSettings: globalSettings,
            );
    }

    assert(
      pillboxLayerLink != null,
      'PillboxLayerLink is required for desktop platforms',
    );

    return CompositedTransformTarget(
      // it cant be null because of assert above
      // ignore: avoid-non-null-assertion
      link: pillboxLayerLink!,
      child: selectDataController.getIsMultiSelect
          ? PillboxContentMulti(
              selectDataController: selectDataController,
              hover: hover,
              isVisibleOvarlay: isVisibleOvarlay,
              pillboxSettings: pillboxSettings,
              pillboxContentMultiBuilder: pillboxContentMultiBuilder,
              pillboxContentMultiSettings: pillboxContentMultiSettings,
              pillboxIconBuilder: pillboxIconBuilder,
              pillboxIconSettings: pillboxIconSettings,
              selectChipBuilder: selectChipBuilder,
              selectChipSettings: selectChipSettings,
              selectSingleBuilder: selectSingleBuilder,
              selectSingleSettings: selectSingleSettings,
              selectOverloadInfoBuilder: selectOverloadInfoBuilder,
              selectOverloadInfoSettings: selectOverloadInfoSettings,
              selectEmptyInfoBuilder: selectEmptyInfoBuilder,
              selectEmptyInfoSettings: selectEmptyInfoSettings,
              globalSettings: globalSettings,
            )
          : PillboxContentSingle(
              selectDataController: selectDataController,
              hover: hover,
              isVisibleOvarlay: isVisibleOvarlay,
              pillboxContentSingleBuilder: pillboxContentSingleBuilder,
              pillboxSettings: pillboxSettings,
              pillboxIconBuilder: pillboxIconBuilder,
              pillboxIconSettings: pillboxIconSettings,
              selectSingleBuilder: selectSingleBuilder,
              selectSingleSettings: selectSingleSettings,
              selectOverloadInfoBuilder: selectOverloadInfoBuilder,
              selectOverloadInfoSettings: selectOverloadInfoSettings,
              selectEmptyInfoBuilder: selectEmptyInfoBuilder,
              selectEmptyInfoSettings: selectEmptyInfoSettings,
              globalSettings: globalSettings,
            ),
    );
  }
}
