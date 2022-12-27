import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/done_button_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class DoneButtonModal extends StatelessWidget {
  final DoneButtonModalBuilder? doneButtonModalBuilder;
  final DoneButtonModalSettings doneButtonModalSettings;
  final GlobalSettings globalSettings;

  const DoneButtonModal({
    super.key,
    required this.doneButtonModalBuilder,
    required this.doneButtonModalSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (doneButtonModalBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return doneButtonModalBuilder!(
        context,
        DoneButtonModalDetails(
          hideModal: () => Navigator.pop(context),
          globalSettings: globalSettings,
        ),
      );
    }

    if (!doneButtonModalSettings.isVisible) {
      return const SizedBox();
    }

    return Container(
      margin: doneButtonModalSettings.margin,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          decoration: _getDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (doneButtonModalSettings.icon != null)
                Container(
                  padding: doneButtonModalSettings.iconPadding,
                  child: Icon(
                    doneButtonModalSettings.icon,
                    color: doneButtonModalSettings.iconColor ??
                        globalSettings.backgroundColor,
                    size: doneButtonModalSettings.iconSize,
                  ),
                ),
              if (doneButtonModalSettings.title != null)
                Container(
                  padding: doneButtonModalSettings.titlePadding,
                  child: Text(
                    // It can be null anyways
                    // ignore: avoid-non-null-assertion
                    doneButtonModalSettings.title!,
                    style: _getTitleTextStyle(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _getDecoration() {
    BoxDecoration decoration = doneButtonModalSettings.buttonDecoration;

    if (decoration.color == null) {
      decoration = decoration.copyWith(
        color: globalSettings.mainColor,
      );
    }

    return decoration;
  }

  TextStyle _getTitleTextStyle() {
    TextStyle textStyle = doneButtonModalSettings.textStyle;

    if (textStyle.fontFamily == null) {
      textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);
    }

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(
        color: globalSettings.backgroundColor,
      );
    }

    return textStyle;
  }
}
