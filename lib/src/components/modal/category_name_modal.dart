import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_name_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class CategoryNameModal extends StatelessWidget {
  final SingleCategoryModel singleCategory;
  final SelectDataController selectDataController;
  final CategoryNameModalBuilder? categoryNameModalBuilder;
  final CategoryNameModalSettings categoryNameModalSettings;
  final GlobalSettings globalSettings;

  const CategoryNameModal({
    super.key,
    required this.singleCategory,
    required this.selectDataController,
    required this.categoryNameModalBuilder,
    required this.categoryNameModalSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (categoryNameModalBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return categoryNameModalBuilder!(
        context,
        CategoryNameModalDetails(
          singleCategory: singleCategory,
          selectDataController: selectDataController,
          onTapCategory: _onTapCategory,
          globalSettings: globalSettings,
        ),
      );
    }

    if (singleCategory.nameCategory == null) {
      return const SizedBox();
    }

    return Container(
      margin: categoryNameModalSettings.margin,
      child: InkWell(
        onTap: _onTapCategory,
        borderRadius: categoryNameModalSettings.inkWellBorderRadius,
        splashColor: selectDataController.isMultiSelect
            ? categoryNameModalSettings.splashColor
            : Colors.transparent,
        highlightColor: selectDataController.isMultiSelect
            ? categoryNameModalSettings.highlightColor
            : Colors.transparent,
        child: Container(
          decoration: categoryNameModalSettings.decoration,
          alignment: categoryNameModalSettings.alignmentGeometry,
          constraints: categoryNameModalSettings.constraints,
          padding: categoryNameModalSettings.textPadding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  // This can't be null because of the if statement above
                  // ignore: avoid-non-null-assertion
                  singleCategory.nameCategory!,
                  overflow: categoryNameModalSettings.textOverflow,
                  style: _getTextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle = categoryNameModalSettings.textStyle;

    if (textStyle.color == null) {
      return textStyle.copyWith(
        color: globalSettings.textColor,
      );
    }

    if (textStyle.fontFamily == null) {
      return textStyle.copyWith(
        fontFamily: globalSettings.fontFamily,
      );
    }

    return textStyle;
  }

  void _onTapCategory() {
    if (!selectDataController.isMultiSelect) {
      return;
    }

    if (singleCategory.singleItemCategoryList.every(
      selectDataController.selectedList.contains,
    )) {
      selectDataController.removeGroupSelectChip(
        singleCategory.singleItemCategoryList,
      );
    } else {
      selectDataController
          .addGroupSelectChip(singleCategory.singleItemCategoryList);
    }
  }
}
