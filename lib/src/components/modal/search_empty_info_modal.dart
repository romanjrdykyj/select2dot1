import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class SearchEmptyInfoModal extends StatelessWidget {
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;
  final GlobalSettings globalSettings;

  const SearchEmptyInfoModal({
    super.key,
    required this.searchEmptyInfoModalBuilder,
    required this.searchEmptyInfoModalSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (searchEmptyInfoModalBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return searchEmptyInfoModalBuilder!(
        context,
        SearchEmptyInfoModalDetails(
          globalSettings: globalSettings,
        ),
      );
    }

    if (searchEmptyInfoModalSettings.isCenter) {
      return Center(
        child: Text(
          searchEmptyInfoModalSettings.text,
          style: _getTextStyle(),
        ),
      );
    }

    return Container(
      padding: searchEmptyInfoModalSettings.padding,
      child: Text(
        searchEmptyInfoModalSettings.text,
        style: _getTextStyle(),
      ),
    );
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle = searchEmptyInfoModalSettings.textStyle;
    textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(color: globalSettings.textColor);
    }

    return textStyle;
  }
}
