// NOTE: Select2dot1 is a export file for the library.
// ignore_for_file: prefer-match-file-name

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

/// This is the main widget of the library and package.
/// Use this widget to create a select2dot1 widget.
///
///
/// On the first step you need to create a list of data that you want to display in.
/// ```dart
/// static const List<SingleCategoryModel> exampleData = [
///     SingleCategoryModel(
///       nameCategory: 'Team Leader',
///       singleItemCategoryList: [
///         SingleItemCategoryModel(
///           nameSingleItem: 'David Eubanks',
///           extraInfoSingleItem: 'Full time',
///           avatarSingleItem: CircleAvatar(
///             backgroundColor: Colors.transparent,
///             foregroundColor: Colors.transparent,
///             backgroundImage: AssetImage('assets/images/avatar1.jpg'),
///           ),
///         ),
///         SingleItemCategoryModel(
///           nameSingleItem: 'Stuart Resch',
///           extraInfoSingleItem: 'Part time',
///           avatarSingleItem: CircleAvatar(
///             backgroundColor: Colors.blue,
///             child: Text('SR', style: TextStyle(color: Colors.white)),
///           ),
///         ),
///       ],
///     ),
/// ```
///
/// Use Select2dot1 widget and pass your data to it. You can also pass scrollController if you want to use it.
/// ```dart
/// Select2dot1(
///     selectDataController: SelectDataController(data: exampleData),
///     scrollController: scrollController,
///     ),
/// ```
class Select2dot1 extends StatefulWidget {
  /// [selectDataController] is a controller that contains all the data that you want to display in the widget.
  /// It is required.
  final SelectDataController selectDataController;

  /// Used this to get the value of the widget outside the widget.
  /// It is call every time when the value of the widget is changed.
  final ValueChanged<List<SingleItemCategoryModel>>? onChanged;

  /// Pass [scrollController] if you want adjustable dropdown anchor.
  final ScrollController? scrollController;

  /// [isSearchable] is a boolean value that indicates whether the widget is searchable or not.
  /// Default value is [true].
  final bool isSearchable;

  /// [PillboxTitleBuilder] is a builder that is used to build the title of the widget.
  final PillboxTitleBuilder? pillboxTitleBuilder;

  /// [PillboxBuilder] is a builder that is used to build the pillbox of the widget.
  final PillboxBuilder? pillboxBuilder;

  /// [PillboxContentMultiBuilder] is a builder that is used to build the content of the pillbox in multi select mode.
  final PillboxContentMultiBuilder? pillboxContentMultiBuilder;

  /// [PillboxContentSingleBuilder] is a builder that is used to build the content of the pillbox in single select mode.
  final PillboxContentSingleBuilder? pillboxContentSingleBuilder;

  /// [PillboxIconBuilder] is a builder that is used to build the icon of the pillbox.
  final PillboxIconBuilder? pillboxIconBuilder;

  /// [SelectChipBuilder] is a builder that is used to build the chip of the widget.
  final SelectChipBuilder? selectChipBuilder;

  /// [SelectSingleBuilder] is a builder that is used to build the single select mode of the widget.
  final SelectSingleBuilder? selectSingleBuilder;

  /// [SelectEmptyInfoBuilder] is a builder that is used to build the empty info of the widget.
  final SelectEmptyInfoBuilder? selectEmptyInfoBuilder;

  /// [SelectOverloadInfoBuilder] is a builder that is used to build the overload info of the widget.
  final SelectOverloadInfoBuilder? selectOverloadInfoBuilder;

  /// [DropdownContentOverlayBuilder] is a builder that is used to build the overlay of the dropdown content.
  final DropdownContentOverlayBuilder? dropdownContentOverlayBuilder;

  /// [SearchBarOverlayBuilder] is a builder that is used to build the overlay of the search bar.
  final SearchBarOverlayBuilder? searchBarOverlayBuilder;

  /// [SearchEmptyInfoOverlayBuilder] is a builder that is used to build the overlay of the search empty info.
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;

  /// [ListDataViewOverlayBuilder] is a builder that is used to build the overlay of the list data view.
  final ListDataViewOverlayBuilder? listDataViewOverlayBuilder;

  /// [CategoryNameOverlayBuilder] is a builder that is used to build the overlay of the category name.
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;

  /// [CategoryItemOverlayBuilder] is a builder that is used to build the overlay of the category item.
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;

  /// [DropdownContentModalBuilder] is a builder that is used to build the modal of the dropdown content.
  final DropdownContentModalBuilder? dropdownContentModalBuilder;

  /// [TitleModalBuilder] is a builder that is used to build the modal of the title.
  final TitleModalBuilder? titleModalBuilder;

  /// [DoneButtonModalBuilder] is a builder that is used to build the modal of the done button.
  final DoneButtonModalBuilder? doneButtonModalBuilder;

  /// [SearchBarModalBuilder] is a builder that is used to build the modal of the search bar.
  final SearchBarModalBuilder? searchBarModalBuilder;

  /// [SearchEmptyInfoModalBuilder] is a builder that is used to build the modal of the search empty info.
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;

  /// [ListDataViewModalBuilder] is a builder that is used to build the modal of the list data view.
  final ListDataViewModalBuilder? listDataViewModalBuilder;

  /// [CategoryNameModalBuilder] is a builder that is used to build the modal of the category name.
  final CategoryNameModalBuilder? categoryNameModalBuilder;

  /// [CategoryItemModalBuilder] is a builder that is used to build the modal of the category item.
  final CategoryItemModalBuilder? categoryItemModalBuilder;

  /// [PillboxTitleSettings] is a class that contains all the settings of the title of the widget.
  final PillboxTitleSettings pillboxTitleSettings;

  /// [PillboxSettings] is a class that contains all the settings of the pillbox of the widget.
  final PillboxSettings pillboxSettings;

  /// [PillboxContentMultiSettings] is a class that contains all the settings of the content of the pillbox in multi select mode.
  final PillboxContentMultiSettings pillboxContentMultiSettings;

  /// [PillboxIconSettings] is a class that contains all the settings of the icon of the pillbox.
  final PillboxIconSettings pillboxIconSettings;

  /// [SelectChipSettings] is a class that contains all the settings of the chip of the widget.
  final SelectChipSettings selectChipSettings;

  /// [SelectSingleSettings] is a class that contains all the settings of the single select mode of the widget.
  final SelectSingleSettings selectSingleSettings;

  /// [SelectEmptyInfoSettings] is a class that contains all the settings of the empty info of the widget.
  final SelectEmptyInfoSettings selectEmptyInfoSettings;

  /// [SelectOverloadInfoSettings] is a class that contains all the settings of the overload info of the widget.
  final SelectOverloadInfoSettings selectOverloadInfoSettings;

  /// [DropdownContentOverlaySettings] is a class that contains all the settings of the overlay of the dropdown content.
  final DropdownContentOverlaySettings dropdownContentOverlaySettings;

  /// [SearchBarOverlaySettings] is a class that contains all the settings of the overlay of the search bar.
  final SearchBarOverlaySettings searchBarOverlaySettings;

  /// [SearchEmptyInfoOverlaySettings] is a class that contains all the settings of the overlay of the search empty info.
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;

  /// [ListDataViewOverlaySettings] is a class that contains all the settings of the overlay of the list data view.
  final ListDataViewOverlaySettings listDataViewOverlaySettings;

  /// [CategoryNameOverlaySettings] is a class that contains all the settings of the overlay of the category name.
  final CategoryNameOverlaySettings categoryNameOverlaySettings;

  /// [CategoryItemOverlaySettings] is a class that contains all the settings of the overlay of the category item.
  final CategoryItemOverlaySettings categoryItemOverlaySettings;

  /// [DropdownContentModalSettings] is a class that contains all the settings of the modal of the dropdown content.
  final DropdownContentModalSettings dropdownContentModalSettings;

  /// [TitleModalSettings] is a class that contains all the settings of the modal of the title.
  final TitleModalSettings titleModalSettings;

  /// [DoneButtonModalSettings] is a class that contains all the settings of the modal of the done button.
  final DoneButtonModalSettings doneButtonModalSettings;

  /// [SearchBarModalSettings] is a class that contains all the settings of the modal of the search bar.
  final SearchBarModalSettings searchBarModalSettings;

  /// [SearchEmptyInfoModalSettings] is a class that contains all the settings of the modal of the search empty info.
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;

  /// [ListDataViewModalSettings] is a class that contains all the settings of the modal of the list data view.
  final ListDataViewModalSettings listDataViewModalSettings;

  /// [CategoryNameModalSettings] is a class that contains all the settings of the modal of the category name.
  final CategoryNameModalSettings categoryNameModalSettings;

  /// [CategoryItemModalSettings] is a class that contains all the settings of the modal of the category item.
  final CategoryItemModalSettings categoryItemModalSettings;

  /// [GlobalSettings] is a class that contains all the global settings of the widget.
  final GlobalSettings globalSettings;

  /// [Select2dot1] is a package widget constructor.
  /// [key] is a key of the widget.
  /// [selectDataController] is a controller of the widget.
  /// [onChanged] is a callback that is called when the selected data is changed.
  /// [scrollController] is a controller of the scroll.
  /// [isSearchable] is a boolean that indicates whether the search bar is visible or not.
  /// [pillboxTitleBuilder] is a builder that is used to build the title of the widget.
  /// [pillboxBuilder] is a builder that is used to build the pillbox of the widget.
  /// [pillboxContentMultiBuilder] is a builder that is used to build the content of the pillbox in multi select mode.
  /// [pillboxContentSingleBuilder] is a builder that is used to build the content of the pillbox in single select mode.
  /// [pillboxIconBuilder] is a builder that is used to build the icon of the pillbox.
  /// [selectChipBuilder] is a builder that is used to build the chip of the widget.
  /// [selectSingleBuilder] is a builder that is used to build the single select mode of the widget.
  /// [selectEmptyInfoBuilder] is a builder that is used to build the empty info of the widget.
  /// [selectOverloadInfoBuilder] is a builder that is used to build the overload info of the widget.
  /// [dropdownContentOverlayBuilder] is a builder that is used to build the overlay of the dropdown content.
  /// [searchBarOverlayBuilder] is a builder that is used to build the overlay of the search bar.
  /// [searchEmptyInfoOverlayBuilder] is a builder that is used to build the overlay of the search empty info.
  /// [listDataViewOverlayBuilder] is a builder that is used to build the overlay of the list data view.
  /// [categoryNameOverlayBuilder] is a builder that is used to build the overlay of the category name.
  /// [categoryItemOverlayBuilder] is a builder that is used to build the overlay of the category item.
  /// [dropdownContentModalBuilder] is a builder that is used to build the modal of the dropdown content.
  /// [titleModalBuilder] is a builder that is used to build the modal of the title.
  /// [doneButtonModalBuilder] is a builder that is used to build the modal of the done button.
  /// [searchBarModalBuilder] is a builder that is used to build the modal of the search bar.
  /// [searchEmptyInfoModalBuilder] is a builder that is used to build the modal of the search empty info.
  /// [listDataViewModalBuilder] is a builder that is used to build the modal of the list data view.
  /// [categoryNameModalBuilder] is a builder that is used to build the modal of the category name.
  /// [categoryItemModalBuilder] is a builder that is used to build the modal of the category item.
  /// [dropdownContentOverlaySettings] is a class that contains all the settings of the overlay of the dropdown content.
  /// [searchBarOverlaySettings] is a class that contains all the settings of the overlay of the search bar.
  /// [searchEmptyInfoOverlaySettings] is a class that contains all the settings of the overlay of the search empty info.
  /// [listDataViewOverlaySettings] is a class that contains all the settings of the overlay of the list data view.
  /// [categoryNameOverlaySettings] is a class that contains all the settings of the overlay of the category name.
  /// [categoryItemOverlaySettings] is a class that contains all the settings of the overlay of the category item.
  /// [dropdownContentModalSettings] is a class that contains all the settings of the modal of the dropdown content.
  /// [titleModalSettings] is a class that contains all the settings of the modal of the title.
  /// [doneButtonModalSettings] is a class that contains all the settings of the modal of the done button.
  /// [searchBarModalSettings] is a class that contains all the settings of the modal of the search bar.
  /// [searchEmptyInfoModalSettings] is a class that contains all the settings of the modal of the search empty info.
  /// [listDataViewModalSettings] is a class that contains all the settings of the modal of the list data view.
  /// [categoryNameModalSettings] is a class that contains all the settings of the modal of the category name.
  /// [categoryItemModalSettings] is a class that contains all the settings of the modal of the category item.
  /// [globalSettings] is a class that contains all the global settings of the widget.
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
