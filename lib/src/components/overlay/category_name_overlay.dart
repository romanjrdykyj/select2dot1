import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_name_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class CategoryNameOverlay extends StatefulWidget {
  final SingleCategoryModel singleCategory;
  final SelectDataController selectDataController;
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;
  final CategoryNameOverlaySettings categoryNameOverlaySettings;
  final GlobalSettings globalSettings;

  const CategoryNameOverlay({
    super.key,
    required this.singleCategory,
    required this.selectDataController,
    required this.categoryNameOverlayBuilder,
    required this.categoryNameOverlaySettings,
    required this.globalSettings,
  });

  @override
  State<CategoryNameOverlay> createState() => _CategoryNameOverlayState();
}

class _CategoryNameOverlayState extends State<CategoryNameOverlay> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    if (widget.categoryNameOverlayBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return widget.categoryNameOverlayBuilder!(
        context,
        CategoryNameOverlayDetails(
          singleCategory: widget.singleCategory,
          selectDataController: widget.selectDataController,
          hover: hover,
          onTapCategory: _onTapCategory,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    if (widget.singleCategory.getNameCategory == null) {
      return const SizedBox();
    }

    return Container(
      margin: widget.categoryNameOverlaySettings.margin,
      child: GestureDetector(
        onTap: _onTapCategory,
        child: MouseRegion(
          cursor: widget.selectDataController.getIsMultiSelect
              ? widget.categoryNameOverlaySettings.mouseCursorSelect
              : SystemMouseCursors.basic,
          onHover:
              widget.selectDataController.getIsMultiSelect ? _onHover : null,
          onExit: widget.selectDataController.getIsMultiSelect ? _onExit : null,
          child: Container(
            decoration: _getDecoration(),
            alignment: widget.categoryNameOverlaySettings.alignmentGeometry,
            constraints: widget.categoryNameOverlaySettings.constraints,
            padding: widget.categoryNameOverlaySettings.textPadding,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    // This can't be null because of the if statement above
                    // ignore: avoid-non-null-assertion
                    widget.singleCategory.getNameCategory!,
                    overflow: widget.categoryNameOverlaySettings.textOverflow,
                    style: _getTextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle _getTextStyle() {
    TextStyle textStyle = widget.categoryNameOverlaySettings.textStyle;

    if (textStyle.color == null) {
      return textStyle.copyWith(
        color: widget.globalSettings.textColor,
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
        ? widget.categoryNameOverlaySettings.hoverDecoration
        : widget.categoryNameOverlaySettings.defaultDecoration;

    if (decoration.color == null) {
      decoration = decoration.copyWith(
        color: hover
            ? widget.globalSettings.hoverListItemColor
            : Colors.transparent,
      );
    }

    return decoration;
  }

  void _onHover(_) {
    if (mounted) {
      setState(() {
        hover = true;
      });
    }
  }

  void _onExit(_) {
    if (mounted) {
      setState(() {
        hover = false;
      });
    }
  }

  void _onTapCategory() {
    if (!widget.selectDataController.getIsMultiSelect) {
      return;
    }

    if (widget.singleCategory.getSingleItemCategoryList.every(
      (element) =>
          widget.selectDataController.getSelectedList.contains(element),
    )) {
      widget.selectDataController.removeGroupSelectChip(
        widget.singleCategory.getSingleItemCategoryList,
      );
    } else {
      widget.selectDataController
          .addGroupSelectChip(widget.singleCategory.getSingleItemCategoryList);
    }
  }
}
