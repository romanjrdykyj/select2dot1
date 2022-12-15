import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:select2dot1/src/controllers/modal_controller.dart';
import 'package:select2dot1/src/controllers/overlay_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/dropdown_overlay.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/pillbox.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_item_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/category_name_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/done_button_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/dropdown_content_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/list_data_view_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_bar_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/title_modal_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_item_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_name_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/dropdown_content_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/list_data_view_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_bar_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_empty_info_overlay_settings.dart';
import 'package:select2dot1/src/settings/pillbox_content_multi_settings.dart';
import 'package:select2dot1/src/settings/pillbox_icon_settings.dart';
import 'package:select2dot1/src/settings/pillbox_settings.dart';
import 'package:select2dot1/src/settings/pillbox_title_settings.dart';
import 'package:select2dot1/src/settings/select_chip_settings.dart';
import 'package:select2dot1/src/settings/select_empty_info_settings.dart';
import 'package:select2dot1/src/settings/select_overload_info_settings.dart';
import 'package:select2dot1/src/settings/select_single_settings.dart';
import 'package:select2dot1/src/utils/animated_state.dart';
import 'package:select2dot1/src/utils/event_args.dart';

// NOTE: Select2dot1 is a export file for the library.
// ignore: prefer-match-file-name
class Select2dot1 extends StatefulWidget {
  final SelectDataController selectDataController;
  final ValueChanged<List<SingleItemCategoryModel>>? onChanged;
  final ScrollController? scrollController;
  final bool isSearchable;
  final PillboxTitleBuilder? pillboxTitleBuilder;
  final PillboxBuilder? pillboxBuilder;
  final PillboxContentMultiBuilder? pillboxContentMultiBuilder;
  final PillboxContentSingleBuilder? pillboxContentSingleBuilder;
  final PillboxIconBuilder? pillboxIconBuilder;
  final SelectChipBuilder? selectChipBuilder;
  final SelectSingleBuilder? selectSingleBuilder;
  final SelectEmptyInfoBuilder? selectEmptyInfoBuilder;
  final SelectOverloadInfoBuilder? selectOverloadInfoBuilder;
  final DropdownContentOverlayBuilder? dropdownContentOverlayBuilder;
  final SearchBarOverlayBuilder? searchBarOverlayBuilder;
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;
  final ListDataViewOverlayBuilder? listDataViewOverlayBuilder;
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;
  final DropdownContentModalBuilder? dropdownContentModalBuilder;
  final TitleModalBuilder? titleModalBuilder;
  final DoneButtonModalBuilder? doneButtonModalBuilder;
  final SearchBarModalBuilder? searchBarModalBuilder;
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;
  final ListDataViewModalBuilder? listDataViewModalBuilder;
  final CategoryNameModalBuilder? categoryNameModalBuilder;
  final CategoryItemModalBuilder? categoryItemModalBuilder;
  final PillboxTitleSettings pillboxTitleSettings;
  final PillboxSettings pillboxSettings;
  final PillboxContentMultiSettings pillboxContentMultiSettings;
  final PillboxIconSettings pillboxIconSettings;
  final SelectChipSettings selectChipSettings;
  final SelectSingleSettings selectSingleSettings;
  final SelectEmptyInfoSettings selectEmptyInfoSettings;
  final SelectOverloadInfoSettings selectOverloadInfoSettings;
  final DropdownContentOverlaySettings dropdownContentOverlaySettings;
  final SearchBarOverlaySettings searchBarOverlaySettings;
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;
  final ListDataViewOverlaySettings listDataViewOverlaySettings;
  final CategoryNameOverlaySettings categoryNameOverlaySettings;
  final CategoryItemOverlaySettings categoryItemOverlaySettings;
  final DropdownContentModalSettings dropdownContentModalSettings;
  final TitleModalSettings titleModalSettings;
  final DoneButtonModalSettings doneButtonModalSettings;
  final SearchBarModalSettings searchBarModalSettings;
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;
  final ListDataViewModalSettings listDataViewModalSettings;
  final CategoryNameModalSettings categoryNameModalSettings;
  final CategoryItemModalSettings categoryItemModalSettings;
  final GlobalSettings globalSettings;

  const Select2dot1({
    super.key,
    required this.selectDataController,
    this.onChanged,
    this.scrollController,
    this.isSearchable = true,
    this.pillboxTitleBuilder,
    this.pillboxBuilder,
    this.pillboxContentMultiBuilder,
    this.pillboxContentSingleBuilder,
    this.pillboxIconBuilder,
    this.selectChipBuilder,
    this.selectSingleBuilder,
    this.selectEmptyInfoBuilder,
    this.selectOverloadInfoBuilder,
    this.dropdownContentOverlayBuilder,
    this.searchBarOverlayBuilder,
    this.searchEmptyInfoOverlayBuilder,
    this.listDataViewOverlayBuilder,
    this.categoryNameOverlayBuilder,
    this.categoryItemOverlayBuilder,
    this.dropdownContentModalBuilder,
    this.titleModalBuilder,
    this.doneButtonModalBuilder,
    this.searchBarModalBuilder,
    this.searchEmptyInfoModalBuilder,
    this.listDataViewModalBuilder,
    this.categoryNameModalBuilder,
    this.categoryItemModalBuilder,
    PillboxTitleSettings? pillboxTitleSettings,
    PillboxSettings? pillboxSettings,
    PillboxContentMultiSettings? pillboxContentMultiSettings,
    PillboxIconSettings? pillboxIconSettings,
    SelectChipSettings? selectChipSettings,
    SelectSingleSettings? selectSingleSettings,
    SelectEmptyInfoSettings? selectEmptyInfoSettings,
    SelectOverloadInfoSettings? selectOverloadInfoSettings,
    DropdownContentOverlaySettings? dropdownContentOverlaySettings,
    SearchBarOverlaySettings? searchBarOverlaySettings,
    SearchEmptyInfoOverlaySettings? searchEmptyInfoOverlaySettings,
    ListDataViewOverlaySettings? listDataViewOverlaySettings,
    CategoryNameOverlaySettings? categoryNameOverlaySettings,
    CategoryItemOverlaySettings? categoryItemOverlaySettings,
    DropdownContentModalSettings? dropdownContentModalSettings,
    TitleModalSettings? titleModalSettings,
    DoneButtonModalSettings? doneButtonModalSettings,
    SearchBarModalSettings? searchBarModalSettings,
    SearchEmptyInfoModalSettings? searchEmptyInfoModalSettings,
    ListDataViewModalSettings? listDataViewModalSettings,
    CategoryNameModalSettings? categoryNameModalSettings,
    CategoryItemModalSettings? categoryItemModalSettings,
    GlobalSettings? globalSettings,
  })  : pillboxTitleSettings =
            pillboxTitleSettings ?? const PillboxTitleSettings(),
        pillboxSettings = pillboxSettings ?? const PillboxSettings(),
        pillboxContentMultiSettings =
            pillboxContentMultiSettings ?? const PillboxContentMultiSettings(),
        pillboxIconSettings =
            pillboxIconSettings ?? const PillboxIconSettings(),
        selectChipSettings = selectChipSettings ?? const SelectChipSettings(),
        selectSingleSettings =
            selectSingleSettings ?? const SelectSingleSettings(),
        selectEmptyInfoSettings =
            selectEmptyInfoSettings ?? const SelectEmptyInfoSettings(),
        selectOverloadInfoSettings =
            selectOverloadInfoSettings ?? const SelectOverloadInfoSettings(),
        dropdownContentOverlaySettings = dropdownContentOverlaySettings ??
            const DropdownContentOverlaySettings(),
        searchBarOverlaySettings =
            searchBarOverlaySettings ?? const SearchBarOverlaySettings(),
        searchEmptyInfoOverlaySettings = searchEmptyInfoOverlaySettings ??
            const SearchEmptyInfoOverlaySettings(),
        listDataViewOverlaySettings =
            listDataViewOverlaySettings ?? const ListDataViewOverlaySettings(),
        categoryNameOverlaySettings =
            categoryNameOverlaySettings ?? const CategoryNameOverlaySettings(),
        categoryItemOverlaySettings =
            categoryItemOverlaySettings ?? const CategoryItemOverlaySettings(),
        dropdownContentModalSettings = dropdownContentModalSettings ??
            const DropdownContentModalSettings(),
        titleModalSettings = titleModalSettings ?? const TitleModalSettings(),
        doneButtonModalSettings =
            doneButtonModalSettings ?? const DoneButtonModalSettings(),
        searchBarModalSettings =
            searchBarModalSettings ?? const SearchBarModalSettings(),
        searchEmptyInfoModalSettings = searchEmptyInfoModalSettings ??
            const SearchEmptyInfoModalSettings(),
        listDataViewModalSettings =
            listDataViewModalSettings ?? const ListDataViewModalSettings(),
        categoryNameModalSettings =
            categoryNameModalSettings ?? const CategoryNameModalSettings(),
        categoryItemModalSettings =
            categoryItemModalSettings ?? const CategoryItemModalSettings(),
        globalSettings = globalSettings ?? const GlobalSettings();
  @override
  State<Select2dot1> createState() => _Select2dot1State();
}

class _Select2dot1State extends AnimatedState
    with OverlayController, ModalController {
  final bool kIsMobile = defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.android;

  // its ok.
  // ignore: avoid-late-keyword
  late final LayerLink layerLink;

  @override
  void initState() {
    super.initState();
    double? appBarMaxHeightTemp = Scaffold.maybeOf(context)?.appBarMaxHeight;

    if (widget.onChanged != null) {
      widget.selectDataController.addListener(_dataOutFromPackage);
    }

    if (!kIsMobile) {
      layerLink = LayerLink();

      setOverlyEntry = OverlayEntry(
        builder: (context) => DropdownOverlay(
          selectDataController: widget.selectDataController,
          overlayHide: hideOverlay,
          animationController: getAnimationController,
          layerLink: layerLink,
          appBarMaxHeight: appBarMaxHeightTemp,
          scrollController: widget.scrollController,
          pillboxLayout: widget.pillboxContentMultiSettings.pillboxLayout,
          dropdownContentOverlayBuilder: widget.dropdownContentOverlayBuilder,
          dropdownContentOverlaySettings: widget.dropdownContentOverlaySettings,
          isSearchable: widget.isSearchable,
          searchBarOverlayBuilder: widget.searchBarOverlayBuilder,
          searchBarOverlaySettings: widget.searchBarOverlaySettings,
          searchEmptyInfoOverlayBuilder: widget.searchEmptyInfoOverlayBuilder,
          searchEmptyInfoOverlaySettings: widget.searchEmptyInfoOverlaySettings,
          listDataViewOverlayBuilder: widget.listDataViewOverlayBuilder,
          listDataViewOverlaySettings: widget.listDataViewOverlaySettings,
          categoryNameOverlayBuilder: widget.categoryNameOverlayBuilder,
          categoryNameOverlaySettings: widget.categoryNameOverlaySettings,
          categoryItemOverlayBuilder: widget.categoryItemOverlayBuilder,
          categoryItemOverlaySettings: widget.categoryItemOverlaySettings,
          globalSettings: widget.globalSettings,
        ),
      );
    }
  }

  @override
  void dispose() {
    if (widget.onChanged != null) {
      widget.selectDataController.removeListener(_dataOutFromPackage);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kIsMobile) {
      return Pillbox.modal(
        selectDataController: widget.selectDataController,
        onTap: () => showModal(context),
        isVisibleOverlay: getIsVisibleOvarlay,
        pillboxTitleBuilder: widget.pillboxTitleBuilder,
        pillboxTitleSettings: widget.pillboxTitleSettings,
        pillboxBuilder: widget.pillboxBuilder,
        pillboxSettings: widget.pillboxSettings,
        pillboxContentSingleBuilder: widget.pillboxContentSingleBuilder,
        pillboxContentMultiBuilder: widget.pillboxContentMultiBuilder,
        pillboxContentMultiSettings: widget.pillboxContentMultiSettings,
        pillboxIconBuilder: widget.pillboxIconBuilder,
        pillboxIconSettings: widget.pillboxIconSettings,
        selectChipBuilder: widget.selectChipBuilder,
        selectChipSettings: widget.selectChipSettings,
        selectSingleBuilder: widget.selectSingleBuilder,
        selectSingleSettings: widget.selectSingleSettings,
        selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
        selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
        selectOverloadInfoBuilder: widget.selectOverloadInfoBuilder,
        selectOverloadInfoSettings: widget.selectOverloadInfoSettings,
        globalSettings: widget.globalSettings,
      );
    }

    return NotificationListener<SizeChangedLayoutNotification>(
      // A little less pedantic style - its okey
      // ignore: prefer-extracting-callbacks
      onNotification: (notification) {
        SchedulerBinding.instance.addPostFrameCallback(refreshOverlayState);

        return true;
      },
      child: SizeChangedLayoutNotifier(
        child: Pillbox.overlay(
          selectDataController: widget.selectDataController,
          onTap: showOverlay,
          isVisibleOverlay: getIsVisibleOvarlay,
          pillboxLayerLink: layerLink,
          pillboxTitleBuilder: widget.pillboxTitleBuilder,
          pillboxTitleSettings: widget.pillboxTitleSettings,
          pillboxBuilder: widget.pillboxBuilder,
          pillboxSettings: widget.pillboxSettings,
          pillboxContentSingleBuilder: widget.pillboxContentSingleBuilder,
          pillboxContentMultiBuilder: widget.pillboxContentMultiBuilder,
          pillboxContentMultiSettings: widget.pillboxContentMultiSettings,
          pillboxIconBuilder: widget.pillboxIconBuilder,
          pillboxIconSettings: widget.pillboxIconSettings,
          selectChipBuilder: widget.selectChipBuilder,
          selectChipSettings: widget.selectChipSettings,
          selectSingleBuilder: widget.selectSingleBuilder,
          selectSingleSettings: widget.selectSingleSettings,
          selectEmptyInfoBuilder: widget.selectEmptyInfoBuilder,
          selectEmptyInfoSettings: widget.selectEmptyInfoSettings,
          selectOverloadInfoBuilder: widget.selectOverloadInfoBuilder,
          selectOverloadInfoSettings: widget.selectOverloadInfoSettings,
          globalSettings: widget.globalSettings,
        ),
      ),
    );
  }

  void _dataOutFromPackage() {
    if (widget.onChanged != null) {
      // This can't be null anyways
      // ignore:avoid-non-null-assertion
      widget.onChanged!(
        widget.selectDataController.getSelectedList,
      );
    }
  }
}
