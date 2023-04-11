import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_item_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class CategoryItemOverlay extends StatefulWidget {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;
  final CategoryItemOverlaySettings categoryItemOverlaySettings;
  final GlobalSettings globalSettings;

  const CategoryItemOverlay({
    super.key,
    required this.singleItemCategory,
    required this.selectDataController,
    required this.overlayHide,
    required this.categoryItemOverlayBuilder,
    required this.categoryItemOverlaySettings,
    required this.globalSettings,
  });

  @override
  State<CategoryItemOverlay> createState() => _CategoryItemOverlayState();
}

class _CategoryItemOverlayState extends State<CategoryItemOverlay> {
  bool hover = false;
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    widget.selectDataController.addListener(_selectDataListener);

    isSelected = _isSelected();
  }

  @override
  void dispose() {
    widget.selectDataController.removeListener(_selectDataListener);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.categoryItemOverlayBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.categoryItemOverlayBuilder!(
        context,
        CategoryItemOverlayDetails(
          singleItemCategory: widget.singleItemCategory,
          selectDataController: widget.selectDataController,
          overlayHide: widget.overlayHide,
          hover: hover,
          isSelected: isSelected,
          onTapSingleItemCategory: _onTapSingleItemCategory,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Container(
      margin: widget.categoryItemOverlaySettings.margin,
      child: MouseRegion(
        cursor: widget.categoryItemOverlaySettings.mouseCursorSelect,
        onHover: mounted ? (event) => setState(() => hover = true) : null,
        onExit: mounted ? (event) => setState(() => hover = false) : null,
        child: GestureDetector(
          onTap: _onTapSingleItemCategory,
          child: Container(
            decoration: _getDecoration(),
            alignment: widget.categoryItemOverlaySettings.alignmentGeometry,
            constraints: widget.categoryItemOverlaySettings.constraints,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: widget.categoryItemOverlaySettings.iconPadding,
                  child: AnimatedOpacity(
                    opacity: isSelected ? 1 : 0,
                    duration: widget
                        .categoryItemOverlaySettings.iconAnimationDuration,
                    curve:
                        widget.categoryItemOverlaySettings.iconAnimationCurve,
                    child: Icon(
                      widget.categoryItemOverlaySettings.iconData,
                      size: widget.categoryItemOverlaySettings.iconSize,
                      color: _getIconColor(),
                    ),
                  ),
                ),
                if (widget.singleItemCategory.avatarSingleItem != null &&
                    widget.categoryItemOverlaySettings.showAvatar)
                  Container(
                    height: widget.categoryItemOverlaySettings.avatarMaxHeight,
                    width: widget.categoryItemOverlaySettings.avatarMaxWidth,
                    margin: widget.categoryItemOverlaySettings.avatarMargin,
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
                        padding: widget.categoryItemOverlaySettings.textPadding,
                        child: Text(
                          widget.singleItemCategory.nameSingleItem,
                          overflow:
                              widget.categoryItemOverlaySettings.textOverflow,
                          style: _getNameItemTextStyle(),
                        ),
                      ),
                      if (widget.categoryItemOverlaySettings.showExtraInfo &&
                          widget.singleItemCategory.extraInfoSingleItem != null)
                        Container(
                          padding: widget
                              .categoryItemOverlaySettings.extraInfoPadding,
                          child: Text(
                            // This can't be null anyways.
                            // ignore: avoid-non-null-assertion
                            widget.singleItemCategory.extraInfoSingleItem!,
                            overflow: widget.categoryItemOverlaySettings
                                .extraInfoTextOverflow,
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
      ),
    );
  }

  Color _getIconColor() {
    return isSelected
        ? widget.categoryItemOverlaySettings.iconSelectedColor ??
            widget.globalSettings.mainColor
        : widget.categoryItemOverlaySettings.iconDefaultColor ??
            widget.globalSettings.textColor;
  }

  TextStyle _getExtraInfoTextStyle() {
    TextStyle textStyle = widget.categoryItemOverlaySettings.extraInfoTextStyle;

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
        ? widget.categoryItemOverlaySettings.selectedTextStyle
        : widget.categoryItemOverlaySettings.defaultTextStyle;

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

  BoxDecoration _getDecoration() {
    BoxDecoration decoration = hover
        ? widget.categoryItemOverlaySettings.hoverDecoration
        : widget.categoryItemOverlaySettings.defaultDecoration;

    if (decoration.color == null) {
      decoration = decoration.copyWith(
        color: hover
            ? widget.globalSettings.hoverListItemColor
            : Colors.transparent,
      );
    }

    return decoration;
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
      widget.overlayHide();
    }
  }

  bool _isSelected() {
    if (widget.selectDataController.selectedList
        .contains(widget.singleItemCategory)) {
      return true;
    }

    return false;
  }

  void _selectDataListener() {
    if (isSelected == _isSelected()) return;

    if (mounted) {
      setState(() {
        isSelected = _isSelected();
      });
    }
  }
}
