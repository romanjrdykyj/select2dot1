import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_empty_info_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class SearchEmptyInfoOverlay extends StatelessWidget {
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;
  final GlobalSettings globalSettings;

  const SearchEmptyInfoOverlay({
    super.key,
    required this.searchEmptyInfoOverlayBuilder,
    required this.searchEmptyInfoOverlaySettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (searchEmptyInfoOverlayBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return searchEmptyInfoOverlayBuilder!(
        context,
        SearchEmptyInfoOverlayDetails(
          globalSettings: globalSettings,
        ),
      );
    }

    return Container(
      padding: searchEmptyInfoOverlaySettings.padding,
      child: Text(
        searchEmptyInfoOverlaySettings.text,
        style: _getTextStyle(),
      ),
    );
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle = searchEmptyInfoOverlaySettings.textStyle;
    textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(color: globalSettings.textColor);
    }

    return textStyle;
  }
}
