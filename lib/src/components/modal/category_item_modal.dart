import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_item_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class CategoryItemModal extends StatefulWidget {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  final CategoryItemModalBuilder? categoryItemModalBuilder;
  final CategoryItemModalSettings categoryItemModalSettings;
  final GlobalSettings globalSettings;

  const CategoryItemModal({
    super.key,
    required this.singleItemCategory,
    required this.selectDataController,
    required this.categoryItemModalBuilder,
    required this.categoryItemModalSettings,
    required this.globalSettings,
  });

  @override
  State<CategoryItemModal> createState() => _CategoryItemModalState();
}

class _CategoryItemModalState extends State<CategoryItemModal> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    if (widget.selectDataController.selectedList
        .contains(widget.singleItemCategory)) {
      isSelected = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    isSelected = _isSelected();

    if (widget.categoryItemModalBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.categoryItemModalBuilder!(
        context,
        CategoryItemModalDetails(
          singleItemCategory: widget.singleItemCategory,
          selectDataController: widget.selectDataController,
          isSelected: isSelected,
          onTapSingleItemCategory: _onTapSingleItemCategory,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Container(
      margin: widget.categoryItemModalSettings.margin,
      child: InkWell(
        onTap: _onTapSingleItemCategory,
        borderRadius: widget.categoryItemModalSettings.inkWellBorderRadius,
        splashColor: widget.categoryItemModalSettings.splashColor,
        highlightColor: widget.categoryItemModalSettings.highlightColor,
        child: Container(
          decoration: widget.categoryItemModalSettings.decoration,
          alignment: widget.categoryItemModalSettings.alignmentGeometry,
          constraints: widget.categoryItemModalSettings.constraints,
          child: Row(
            children: [
              Container(
                padding: widget.categoryItemModalSettings.iconPadding,
                child: AnimatedOpacity(
                  opacity: isSelected ? 1 : 0,
                  duration:
                      widget.categoryItemModalSettings.iconAnimationDuration,
                  curve: widget.categoryItemModalSettings.iconAnimationCurve,
                  child: Icon(
                    widget.categoryItemModalSettings.iconData,
                    size: widget.categoryItemModalSettings.iconSize,
                    color: _getIconColor(),
                  ),
                ),
              ),
              if (widget.singleItemCategory.avatarSingleItem != null &&
                  widget.categoryItemModalSettings.showAvatar)
                Container(
                  height: widget.categoryItemModalSettings.avatarMaxHeight,
                  width: widget.categoryItemModalSettings.avatarMaxWidth,
                  margin: widget.categoryItemModalSettings.avatarMargin,
                  child: FittedBox(
                    child: widget.singleItemCategory.avatarSingleItem,
                  ),
                ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: widget.categoryItemModalSettings.textPadding,
                      child: Text(
                        widget.singleItemCategory.nameSingleItem,
                        overflow: widget.categoryItemModalSettings.textOverflow,
                        style: _getNameItemTextStyle(),
                      ),
                    ),
                    if (widget.categoryItemModalSettings.showExtraInfo &&
                        widget.singleItemCategory.extraInfoSingleItem != null)
                      Container(
                        padding:
                            widget.categoryItemModalSettings.extraInfoPadding,
                        child: Text(
                          // This can't be null anyways.
                          // ignore: avoid-non-null-assertion
                          widget.singleItemCategory.extraInfoSingleItem!,
                          overflow: widget
                              .categoryItemModalSettings.extraInfoTextOverflow,
                          style: _getExtraInfoTextStyle(),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getIconColor() {
    return isSelected
        ? widget.categoryItemModalSettings.iconSelectedColor ??
            widget.globalSettings.mainColor
        : widget.categoryItemModalSettings.iconDefaultColor ??
            widget.globalSettings.textColor;
  }

  TextStyle _getExtraInfoTextStyle() {
    TextStyle textStyle = widget.categoryItemModalSettings.extraInfoTextStyle;

    if (textStyle.color == null) {
      return textStyle.copyWith(
        color: widget.globalSettings.activeColor,
      );
    }

    if (textStyle.fontFamily == null) {
      return textStyle.copyWith(
        fontFamily: widget.globalSettings.fontFamily,
      );
    }

    return textStyle;
  }

  TextStyle _getNameItemTextStyle() {
    TextStyle textStyle = isSelected
        ? widget.categoryItemModalSettings.selectedTextStyle
        : widget.categoryItemModalSettings.defaultTextStyle;

    if (textStyle.color == null) {
      return textStyle.copyWith(
        color: isSelected
            ? widget.globalSettings.mainColor
            : widget.globalSettings.textColor,
      );
    }

    if (textStyle.fontFamily == null) {
      return textStyle.copyWith(
        fontFamily: widget.globalSettings.fontFamily,
      );
    }

    return textStyle;
  }

  void _onTapSingleItemCategory() {
    if (!isSelected) {
      widget.selectDataController.isMultiSelect
          ? widget.selectDataController.addSelectChip(widget.singleItemCategory)
          : widget.selectDataController
              .setSingleSelect(widget.singleItemCategory);
    } else {
      widget.selectDataController
          .removeSingleSelectedChip(widget.singleItemCategory);
    }

    if (!widget.selectDataController.isMultiSelect) {
      Navigator.pop(context);
    }
  }

  bool _isSelected() {
    if (widget.selectDataController.selectedList
        .contains(widget.singleItemCategory)) {
      return true;
    }

    return false;
  }
}
