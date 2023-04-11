import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/title_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class TitleModal extends StatelessWidget {
  final TitleModalBuilder? titleModalBuilder;
  final TitleModalSettings titleModalSettings;
  final GlobalSettings globalSettings;

  const TitleModal({
    super.key,
    required this.titleModalBuilder,
    required this.titleModalSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (titleModalBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return titleModalBuilder!(
        context,
        TittleModalDetails(
          globalSettings: globalSettings,
        ),
      );
    }

    if (titleModalSettings.title == null) {
      return const SizedBox();
    }

    return Container(
      padding: titleModalSettings.titlePadding,
      child: Text(
        // It can be null anyways.
        // ignore: avoid-non-null-assertion
        titleModalSettings.title!,
        overflow: titleModalSettings.titleOverflow,
        style: _getTitleTextStyle(),
      ),
    );
  }

  TextStyle _getTitleTextStyle() {
    TextStyle textStyle = titleModalSettings.titleTextStyle;

    if (textStyle.fontFamily == null) {
      textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);
    }

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(
        color: globalSettings.textColor,
      );
    }

    return textStyle;
  }
}
