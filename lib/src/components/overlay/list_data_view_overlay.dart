import 'dart:async';

import 'package:flutter/material.dart';

import 'package:select2dot1/src/components/overlay/category_item_overlay.dart';
import 'package:select2dot1/src/components/overlay/category_name_overlay.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_item_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_name_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/list_data_view_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_empty_info_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class ListDataViewOverlay extends StatefulWidget {
  final SearchController searchController;
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;
  final ListDataViewOverlayBuilder? listDataViewOverlayBuilder;
  final ListDataViewOverlaySettings listDataViewOverlaySettings;
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;
  final CategoryNameOverlaySettings categoryNameOverlaySettings;
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;
  final CategoryItemOverlaySettings categoryItemOverlaySettings;
  final GlobalSettings globalSettings;

  const ListDataViewOverlay({
    super.key,
    required this.searchController,
    required this.selectDataController,
    required this.overlayHide,
    required this.searchEmptyInfoOverlayBuilder,
    required this.searchEmptyInfoOverlaySettings,
    required this.listDataViewOverlayBuilder,
    required this.listDataViewOverlaySettings,
    required this.categoryNameOverlayBuilder,
    required this.categoryNameOverlaySettings,
    required this.categoryItemOverlayBuilder,
    required this.categoryItemOverlaySettings,
    required this.globalSettings,
  });

  @override
  State<ListDataViewOverlay> createState() => _ListDataViewOverlayState();
}

class _ListDataViewOverlayState extends State<ListDataViewOverlay> {
  final ScrollController scrollController = ScrollController();

  Stream<List<Widget>> dataStreamFunc() async* {
    List<Widget> listDataViewChildren = [];
    for (int indexCategory = 0;
        indexCategory < widget.searchController.getResults.length;
        indexCategory++) {
      listDataViewChildren.add(
        CategoryNameOverlay(
          singleCategory: widget.searchController.getResults[indexCategory],
          selectDataController: widget.selectDataController,
          categoryNameOverlayBuilder: widget.categoryNameOverlayBuilder,
          categoryNameOverlaySettings: widget.categoryNameOverlaySettings,
          globalSettings: widget.globalSettings,
        ),
      );
      for (int indexItem = 0;
          indexItem <
              widget.searchController.getResults[indexCategory]
                  .singleItemCategoryList.length;
          indexItem++) {
        listDataViewChildren.add(
          CategoryItemOverlay(
            singleItemCategory: widget.searchController
                .getResults[indexCategory].singleItemCategoryList[indexItem],
            selectDataController: widget.selectDataController,
            overlayHide: widget.overlayHide,
            categoryItemOverlayBuilder: widget.categoryItemOverlayBuilder,
            categoryItemOverlaySettings: widget.categoryItemOverlaySettings,
            globalSettings: widget.globalSettings,
          ),
        );
      }
    }

    yield listDataViewChildren;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.listDataViewOverlayBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.listDataViewOverlayBuilder!(
        context,
        ListDataViewOverlayDetails(
          searchController: widget.searchController,
          selectDataController: widget.selectDataController,
          overlayHide: widget.overlayHide,
          categoryNameOverlay: _categoryNameOverlay,
          categoryItemOverlay: _categoryItemOverlay,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return StreamBuilder<Object>(
      stream: dataStreamFunc(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator.adaptive(),
              ),
            ],
          );
        }

        return Container(
          margin: widget.listDataViewOverlaySettings.margin,
          padding: widget.listDataViewOverlaySettings.padding,
          child: RawScrollbar(
            trackVisibility: widget.listDataViewOverlaySettings.trackVisibility,
            thumbVisibility: widget.listDataViewOverlaySettings.thumbVisibility,
            controller: scrollController,
            thumbColor: widget.listDataViewOverlaySettings.thumbColor ??
                widget.globalSettings.activeColor,
            trackColor: widget.listDataViewOverlaySettings.trackColor,
            trackBorderColor:
                widget.listDataViewOverlaySettings.trackBorderColor,
            shape: widget.listDataViewOverlaySettings.shapeScrollbar,
            radius: widget.listDataViewOverlaySettings.radiusScrollbar,
            thickness: widget.listDataViewOverlaySettings.thicknessScrollbar,
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: CustomScrollView(
                shrinkWrap: true,
                controller: scrollController,
                slivers: <SliverList>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) =>
                          (snapshot.data as List<Widget>)[index],
                      childCount: (snapshot.data as List<Widget>).length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _categoryNameOverlay(SingleCategoryModel i) => CategoryNameOverlay(
        singleCategory: i,
        selectDataController: widget.selectDataController,
        categoryNameOverlayBuilder: widget.categoryNameOverlayBuilder,
        categoryNameOverlaySettings: widget.categoryNameOverlaySettings,
        globalSettings: widget.globalSettings,
      );

  Widget _categoryItemOverlay(SingleItemCategoryModel i) => CategoryItemOverlay(
        singleItemCategory: i,
        selectDataController: widget.selectDataController,
        overlayHide: widget.overlayHide,
        categoryItemOverlayBuilder: widget.categoryItemOverlayBuilder,
        categoryItemOverlaySettings: widget.categoryItemOverlaySettings,
        globalSettings: widget.globalSettings,
      );
}
