import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/select_overload_info_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class SelectOverloadInfo extends StatelessWidget {
  final int countSelected;
  final SelectOverloadInfoBuilder? selectOverloadInfoBuilder;
  final SelectOverloadInfoSettings selectOverloadInfoSettings;
  final GlobalSettings globalSettings;

  const SelectOverloadInfo({
    super.key,
    required this.countSelected,
    required this.selectOverloadInfoBuilder,
    required this.selectOverloadInfoSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (selectOverloadInfoBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return selectOverloadInfoBuilder!(
        context,
        SelectOverloadInfoDetails(
          countSelected: countSelected,
          globalSettings: globalSettings,
        ),
      );
    }

    return Container(
      padding: selectOverloadInfoSettings.padding,
      child: Text(
        selectOverloadInfoSettings.firstPartText +
            countSelected.toString() +
            selectOverloadInfoSettings.text,
        style: _getTextStyle(),
      ),
    );
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle = selectOverloadInfoSettings.textStyle;
    textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(color: globalSettings.textColor);
    }

    return textStyle;
  }
}
