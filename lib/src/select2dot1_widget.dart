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
import 'package:select2dot1/src/settings/modal/dropdown_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/list_data_view_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_bar_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/title_modal_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_item_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_name_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/dropdown_overlay_settings.dart';
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
  /// This is a controller which contains all the data that you want to display in the widget.
  /// You can also use this controller to get the value of the widget outside the widget.
  /// Also you can controller selected items.
  /// It is required.
  final SelectDataController selectDataController;

  /// Used this to get the value of the widget outside the widget.
  /// It is call every time when the value of the widget is changed.
  final ValueChanged<List<SingleItemCategoryModel>>? onChanged;

  /// Pass it if you want adjustable dropdown anchor.
  final ScrollController? scrollController;

  /// This is a boolean value that indicates whether the widget is searchable or not.
  /// Default value is [true].
  final bool isSearchable;

  /// This is a builder that is used to build the title pillbox of the widget.
  final PillboxTitleBuilder? pillboxTitleBuilder;

  /// This is a builder that is used to build the pillbox of the widget.
  final PillboxBuilder? pillboxBuilder;

  /// This is a builder that is used to build the content of the pillbox in multi select mode.
  final PillboxContentMultiBuilder? pillboxContentMultiBuilder;

  /// This is a builder that is used to build the content of the pillbox in single select mode.
  final PillboxContentSingleBuilder? pillboxContentSingleBuilder;

  /// This is a builder that is used to build the icon of the pillbox.
  final PillboxIconBuilder? pillboxIconBuilder;

  /// This is a builder that is used to build the select chip of the widget.
  final SelectChipBuilder? selectChipBuilder;

  /// This is a builder that is used to build the single select of the widget.
  final SelectSingleBuilder? selectSingleBuilder;

  /// This is a builder that is used to build the empty info in pillbox.
  final SelectEmptyInfoBuilder? selectEmptyInfoBuilder;

  /// This is a builder that is used to build the overload info in pillbox.
  final SelectOverloadInfoBuilder? selectOverloadInfoBuilder;

  /// This is a builder that is used to build the dropdown content (overlay) of the widget.
  final DropdownContentOverlayBuilder? dropdownContentOverlayBuilder;

  /// This is a builder that is used to build the search bar of the widget in overlay mode.
  final SearchBarOverlayBuilder? searchBarOverlayBuilder;

  /// This is a builder that is used to build the search empty info of dropdown content in overlay mode.
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;

  /// This is a builder that is used to build the list data view of dropdown content in overlay mode.
  final ListDataViewOverlayBuilder? listDataViewOverlayBuilder;

  /// This is a builder that is used to build the category name of list data view in overlay mode.
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;

  /// This is a builder that is used to build the category item of list data view in overlay mode.
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;

  /// This is a builder that is used to build the dropdown content (modal) of the widget.
  final DropdownContentModalBuilder? dropdownContentModalBuilder;

  /// This is a builder that is used to build the title of dropdown content in modal mode.
  final TitleModalBuilder? titleModalBuilder;

  /// This is a builder that is used to build the done button of dropdown content in modal mode.
  final DoneButtonModalBuilder? doneButtonModalBuilder;

  /// This is a builder that is used to build the search bar of the widget in modal mode.
  final SearchBarModalBuilder? searchBarModalBuilder;

  /// This is a builder that is used to build the search empty info of dropdown content in modal mode.
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;

  /// This is a builder that is used to build the list data view of dropdown content in modal mode.
  final ListDataViewModalBuilder? listDataViewModalBuilder;

  /// This is a builder that is used to build the category name of list data view in modal mode.
  final CategoryNameModalBuilder? categoryNameModalBuilder;

  /// This is a builder that is used to build the category item of list data view in modal mode.
  final CategoryItemModalBuilder? categoryItemModalBuilder;

  /// This is a class which contains all the settings of the title of the widget.
  final PillboxTitleSettings pillboxTitleSettings;

  /// This is a class which contains all the settings of the pillbox of the widget.
  final PillboxSettings pillboxSettings;

  /// This is a class which contains all the settings of the content of the pillbox in multi select mode.
  final PillboxContentMultiSettings pillboxContentMultiSettings;

  /// This is a class which contains all the settings of the icon of the pillbox.
  final PillboxIconSettings pillboxIconSettings;

  /// This is a class which contains all the settings of the select chip of the widget.
  final SelectChipSettings selectChipSettings;

  /// This is a class which contains all the settings of the single select of the widget.
  final SelectSingleSettings selectSingleSettings;

  /// This is a class which contains all the settings of the empty info of the widget.
  final SelectEmptyInfoSettings selectEmptyInfoSettings;

  /// This is a class which contains all the settings of the overload info of the widget.
  final SelectOverloadInfoSettings selectOverloadInfoSettings;

  /// This is a class which contains all the settings of the dropdown content (overlay) of the widget.
  final DropdownOverlaySettings dropdownOverlaySettings;

  /// This is a class which contains all the settings of the search bar of the widget in overlay mode.
  final SearchBarOverlaySettings searchBarOverlaySettings;

  /// This is a class which contains all the settings of the search empty info of dropdown content in overlay mode.
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;

  /// This is a class which contains all the settings of the list data view of dropdown content in overlay mode.
  final ListDataViewOverlaySettings listDataViewOverlaySettings;

  /// This is a class which contains all the settings of the category name of list data view in overlay mode.
  final CategoryNameOverlaySettings categoryNameOverlaySettings;

  /// This is a class which contains all the settings of the category item of list data view in overlay mode.
  final CategoryItemOverlaySettings categoryItemOverlaySettings;

  /// This is a class which contains all the settings of the dropdown content (modal) of the widget.
  final DropdownModalSettings dropdownModalSettings;

  /// This is a class which contains all the settings of the title of dropdown content in modal mode.
  final TitleModalSettings titleModalSettings;

  /// This is a class which contains all the settings of the done button of dropdown content in modal mode.
  final DoneButtonModalSettings doneButtonModalSettings;

  /// This is a class which contains all the settings of the search bar of the widget in modal mode.
  final SearchBarModalSettings searchBarModalSettings;

  /// This is a class which contains all the settings of the search empty info of dropdown content in modal mode.
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;

  /// This is a class which contains all the settings of the list data view of dropdown content in modal mode.
  final ListDataViewModalSettings listDataViewModalSettings;

  /// This is a class which contains all the settings of the category name of list data view in modal mode.
  final CategoryNameModalSettings categoryNameModalSettings;

  /// This is a class which contains all the settings of the category item of list data view in modal mode.
  final CategoryItemModalSettings categoryItemModalSettings;

  /// This is a class which contains all the global settings of the widget.
  final GlobalSettings globalSettings;

  /// [Select2dot1] is a package widget constructor. //TODO: add more description
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
    this.pillboxTitleSettings = const PillboxTitleSettings(),
    this.pillboxSettings = const PillboxSettings(),
    this.pillboxContentMultiSettings = const PillboxContentMultiSettings(),
    this.pillboxIconSettings = const PillboxIconSettings(),
    this.selectChipSettings = const SelectChipSettings(),
    this.selectSingleSettings = const SelectSingleSettings(),
    this.selectEmptyInfoSettings = const SelectEmptyInfoSettings(),
    this.selectOverloadInfoSettings = const SelectOverloadInfoSettings(),
    this.dropdownOverlaySettings = const DropdownOverlaySettings(),
    this.searchBarOverlaySettings = const SearchBarOverlaySettings(),
    this.searchEmptyInfoOverlaySettings =
        const SearchEmptyInfoOverlaySettings(),
    this.listDataViewOverlaySettings = const ListDataViewOverlaySettings(),
    this.categoryNameOverlaySettings = const CategoryNameOverlaySettings(),
    this.categoryItemOverlaySettings = const CategoryItemOverlaySettings(),
    this.dropdownModalSettings = const DropdownModalSettings(),
    this.titleModalSettings = const TitleModalSettings(),
    this.doneButtonModalSettings = const DoneButtonModalSettings(),
    this.searchBarModalSettings = const SearchBarModalSettings(),
    this.searchEmptyInfoModalSettings = const SearchEmptyInfoModalSettings(),
    this.listDataViewModalSettings = const ListDataViewModalSettings(),
    this.categoryNameModalSettings = const CategoryNameModalSettings(),
    this.categoryItemModalSettings = const CategoryItemModalSettings(),
    this.globalSettings = const GlobalSettings(),
  });
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
          dropdownOverlaySettings: widget.dropdownOverlaySettings,
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
