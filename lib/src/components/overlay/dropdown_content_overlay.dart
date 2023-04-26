import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:select2dot1/src/components/overlay/list_data_view_overlay.dart';
import 'package:select2dot1/src/components/overlay/search_bar_overlay.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_item_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_name_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/dropdown_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/list_data_view_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/loading_data_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_bar_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_empty_info_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class DropdownContentOverlay extends StatefulWidget {
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  final LayerLink layerLink;
  final ScrollController? scrollController;
  final double? appBarMaxHeight;
  final DropdownContentOverlayBuilder? dropdownContentOverlayBuilder;
  final DropdownOverlaySettings dropdownOverlaySettings;
  final bool isSearchable;
  final SearchBarOverlayBuilder? searchBarOverlayBuilder;
  final SearchBarOverlaySettings searchBarOverlaySettings;
  final LoadingDataOverlayBuilder? loadingDataOverlayBuilder;
  final LoadingDataOverlaySettings loadingDataOverlaySettings;
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;
  final ListDataViewOverlayBuilder? listDataViewOverlayBuilder;
  final ListDataViewOverlaySettings listDataViewOverlaySettings;
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;
  final CategoryNameOverlaySettings categoryNameOverlaySettings;
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;
  final CategoryItemOverlaySettings categoryItemOverlaySettings;
  final GlobalSettings globalSettings;

  const DropdownContentOverlay({
    super.key,
    required this.selectDataController,
    required this.overlayHide,
    required this.layerLink,
    required this.scrollController,
    required this.appBarMaxHeight,
    required this.dropdownContentOverlayBuilder,
    required this.dropdownOverlaySettings,
    required this.isSearchable,
    required this.searchBarOverlayBuilder,
    required this.searchBarOverlaySettings,
    required this.loadingDataOverlayBuilder,
    required this.loadingDataOverlaySettings,
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
  State<DropdownContentOverlay> createState() => _DropdownContentOverlayState();
}

class _DropdownContentOverlayState extends State<DropdownContentOverlay> {
  static const dropdownOverlayPadding = 10;
  final keySearchBarOverlay = GlobalKey();
  Size sizeSearchBarOverlay = const Size(0, 0);

  // It's good :D.
  // ignore: avoid-late-keyword
  late final SearchControllerSelect2dot1 searchController;

  @override
  void initState() {
    super.initState();
    searchController = SearchControllerSelect2dot1(widget.selectDataController.data);
    if (widget.dropdownContentOverlayBuilder == null) {
      _calculateSearchBarOverlaySize();
    }
  }

  @override
  void dispose() {
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.dropdownContentOverlayBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.dropdownContentOverlayBuilder!(
        context,
        DropdownContentOverlayDetails(
          selectDataController: widget.selectDataController,
          overlayHide: widget.overlayHide,
          layerLink: widget.layerLink,
          scrollController: widget.scrollController,
          appBarMaxHeight: widget.appBarMaxHeight,
          searchController: searchController,
          searchBarOverlay: _searchBarOverlay,
          listDataViewOverlay: _listDataViewOverlay,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Container(
      decoration: _getDecoration(),
      margin: widget.dropdownOverlaySettings.margin,
      padding: widget.dropdownOverlaySettings.padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NotificationListener<SizeChangedLayoutNotification>(
            // A little less pedantic style - its okey.
            // ignore: prefer-extracting-callbacks
            onNotification: (notification) {
              _calculateSearchBarOverlaySize();

              return true;
            },
            child: SizeChangedLayoutNotifier(
              child: SearchBarOverlay(
                key: keySearchBarOverlay,
                searchController: searchController,
                isSearchable: widget.isSearchable,
                searchBarOverlayBuilder: widget.searchBarOverlayBuilder,
                searchBarOverlaySettings: widget.searchBarOverlaySettings,
                globalSettings: widget.globalSettings,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: widget.dropdownOverlaySettings.minHeight,
              maxHeight: _calculateMaxHeight(),
            ),
            child: ListDataViewOverlay(
              searchController: searchController,
              selectDataController: widget.selectDataController,
              overlayHide: widget.overlayHide,
              loadingDataOverlayBuilder: widget.loadingDataOverlayBuilder,
              loadingDataOverlaySettings: widget.loadingDataOverlaySettings,
              searchEmptyInfoOverlayBuilder:
                  widget.searchEmptyInfoOverlayBuilder,
              searchEmptyInfoOverlaySettings:
                  widget.searchEmptyInfoOverlaySettings,
              listDataViewOverlayBuilder: widget.listDataViewOverlayBuilder,
              listDataViewOverlaySettings: widget.listDataViewOverlaySettings,
              categoryNameOverlayBuilder: widget.categoryNameOverlayBuilder,
              categoryNameOverlaySettings: widget.categoryNameOverlaySettings,
              categoryItemOverlayBuilder: widget.categoryItemOverlayBuilder,
              categoryItemOverlaySettings: widget.categoryItemOverlaySettings,
              globalSettings: widget.globalSettings,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _getDecoration() {
    BoxDecoration decoration = widget.dropdownOverlaySettings.decoration;

    if (decoration.color == null) {
      decoration = decoration.copyWith(
        color: widget.globalSettings.backgroundColor,
      );
    }

    if (decoration.border == null) {
      decoration = decoration.copyWith(
        border: Border.fromBorderSide(
          BorderSide(color: widget.globalSettings.inActiveColor),
        ),
      );
    }

    if (decoration.boxShadow == null) {
      decoration = decoration.copyWith(
        boxShadow: [
          BoxShadow(
            color: widget.globalSettings.inActiveColor,
            // Its constant.
            // ignore: no-magic-number
            blurRadius: 2.0,
            offset: const Offset(0, 2),
          ),
        ],
      );
    }

    return decoration;
  }

  void _calculateSearchBarOverlaySize() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      assert(keySearchBarOverlay.currentContext != null);
      final RenderObject? renderObject =
          keySearchBarOverlay.currentContext?.findRenderObject();
      assert(renderObject == null || renderObject is RenderBox);

      if (renderObject != null) {
        if (mounted) {
          setState(() {
            sizeSearchBarOverlay = (renderObject as RenderBox).size;
          });
        }
      }
    });
  }

  double _calculateMaxHeight() {
    double viewDimension = widget
            .scrollController?.position.viewportDimension ??
        (MediaQuery.of(context).size.height - (widget.appBarMaxHeight ?? 0));

    double results = viewDimension / 2 -
        (widget.layerLink.leaderSize?.height ?? 0) / 2 -
        sizeSearchBarOverlay.height -
        dropdownOverlayPadding;

    if (widget.dropdownOverlaySettings.maxHeight > results) {
      return results >= widget.dropdownOverlaySettings.minHeight
          ? results
          : widget.dropdownOverlaySettings.minHeight;
    } else {
      return widget.dropdownOverlaySettings.maxHeight;
    }
  }

  Widget _searchBarOverlay() => SearchBarOverlay(
        searchController: searchController,
        isSearchable: widget.isSearchable,
        searchBarOverlayBuilder: widget.searchBarOverlayBuilder,
        searchBarOverlaySettings: widget.searchBarOverlaySettings,
        globalSettings: widget.globalSettings,
      );

  Widget _listDataViewOverlay() => ListDataViewOverlay(
        searchController: searchController,
        selectDataController: widget.selectDataController,
        overlayHide: widget.overlayHide,
        loadingDataOverlayBuilder: widget.loadingDataOverlayBuilder,
        loadingDataOverlaySettings: widget.loadingDataOverlaySettings,
        searchEmptyInfoOverlayBuilder: widget.searchEmptyInfoOverlayBuilder,
        searchEmptyInfoOverlaySettings: widget.searchEmptyInfoOverlaySettings,
        listDataViewOverlayBuilder: widget.listDataViewOverlayBuilder,
        listDataViewOverlaySettings: widget.listDataViewOverlaySettings,
        categoryNameOverlayBuilder: widget.categoryNameOverlayBuilder,
        categoryNameOverlaySettings: widget.categoryNameOverlaySettings,
        categoryItemOverlayBuilder: widget.categoryItemOverlayBuilder,
        categoryItemOverlaySettings: widget.categoryItemOverlaySettings,
        globalSettings: widget.globalSettings,
      );
}
