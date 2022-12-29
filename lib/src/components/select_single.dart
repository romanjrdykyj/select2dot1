import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/select_single_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class SelectSingle extends StatelessWidget {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  final SelectSingleBuilder? selectSingleBuilder;
  final SelectSingleSettings selectSingleSettings;
  final GlobalSettings globalSettings;

  const SelectSingle({
    super.key,
    required this.singleItemCategory,
    required this.selectDataController,
    required this.selectSingleBuilder,
    required this.selectSingleSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (selectSingleBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return selectSingleBuilder!(
        context,
        SelectSingleDetails(
          singleItemCategory: singleItemCategory,
          selectDataController: selectDataController,
          globalSettings: globalSettings,
        ),
      );
    }

    return Container(
      padding: selectSingleSettings.padding,
      child: Row(
        children: [
          if (singleItemCategory.avatarSingleItem != null &&
              selectSingleSettings.showAvatar)
            Container(
              width: selectSingleSettings.avatarMaxWidth,
              height: selectSingleSettings.avatarMaxHeight,
              margin: selectSingleSettings.avatarMargin,
              child: FittedBox(child: singleItemCategory.avatarSingleItem),
            ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: selectSingleSettings.textPadding,
                  child: Text(
                    singleItemCategory.nameSingleItem,
                    overflow: selectSingleSettings.textOverflow,
                    style: _getTextStyle(),
                  ),
                ),
                if (singleItemCategory.extraInfoSingleItem != null &&
                    selectSingleSettings.showExtraInfo)
                  Container(
                    padding: selectSingleSettings.extraInfopadding,
                    child: Text(
                      // This can't be null anyways
                      // ignore: avoid-non-null-assertion
                      singleItemCategory.extraInfoSingleItem!,
                      overflow: selectSingleSettings.extraInfoTextOverflow,
                      style: _getExtraInfoTextStyle(),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _getExtraInfoTextStyle() {
    TextStyle textStyle = selectSingleSettings.extraInfoTextStyle;
    textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(color: globalSettings.activeColor);
    }

    return textStyle;
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle = selectSingleSettings.textStyle;
    textStyle = textStyle.copyWith(fontFamily: globalSettings.fontFamily);

    if (textStyle.color == null) {
      textStyle = textStyle.copyWith(color: globalSettings.textColor);
    }

    return textStyle;
  }
}
