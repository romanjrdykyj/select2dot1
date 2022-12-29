// ignore_for_file: prefer-match-file-name
import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';

/// Is a function that will be used to build your own title of the pillbox.
typedef PillboxTitleBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own title of the pillbox.
  BuildContext context,

  /// [pillboxTitleDetails] is a [PillboxTitleDetails] that will be used to build your own title of the pillbox.
  PillboxTitleDetails pillboxTitleDetails,
);

/// The [PillboxTitleDetails] is a class that contains the details to build the title of the pillbox.
/// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
/// [hover] is a boolean that will be used to check if the pillbox is hovered.
/// [isFocus] is a boolean that will be used to check if the pillbox is focused.
/// [onFocusChange] is a function that will be used to change the focus of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class PillboxTitleDetails {
  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  bool hover;

  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  bool isFocus;

  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  final void Function() onFocusChange;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxTitleDetails] class.
  /// The [PillboxTitleDetails] is a class that contains the details to build the title of the pillbox.
  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  PillboxTitleDetails({
    required this.isVisibleOvarlay,
    required this.hover,
    required this.isFocus,
    required this.onFocusChange,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own content of the pillbox.
typedef PillboxBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own content of the pillbox.
  BuildContext context,

  /// [pillboxDetails] is a [PillboxDetails] that will be used to build your own content of the pillbox.
  PillboxDetails pillboxDetails,
);

/// The [PillboxDetails] is a class that contains the details to build the content of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
/// [showDropdown] is a function that will be used to show the dropdown.
/// [isVisibleOverlay] is a [ValueNotifier] that will be used to show or hide the overlay.
/// [pillboxLayerLink] is a [LayerLink] that will be used to link the pillbox to the dropdown.
/// [hover] is a boolean that will be used to check if the pillbox is hovered.
/// [pillboxTitle] is a function that will be used to build the title of the pillbox.
/// [pillboxContent] is a function that will be used to build the content of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class PillboxDetails {
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  final SelectDataController selectDataController;

  /// [showDropdown] is a function that will be used to show the dropdown.
  final void Function() showDropdown;

  /// [isVisibleOverlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  final ValueNotifier<bool>? isVisibleOverlay;

  /// [pillboxLayerLink] is a [LayerLink] that will be used to link the pillbox to the dropdown.
  final LayerLink? pillboxLayerLink;

  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  bool hover;

  /// [pillboxTitle] is a function that will be used to build the title of the pillbox.
  final Widget Function() pillboxTitle;

  /// [pillboxContent] is a function that will be used to build the content of the pillbox.
  final Widget Function() pillboxContent;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxDetails] class.
  /// The [PillboxDetails] is a class that contains the details to build the content of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  /// [showDropdown] is a function that will be used to show the dropdown.
  /// [isVisibleOverlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  /// [pillboxLayerLink] is a [LayerLink] that will be used to link the pillbox to the dropdown.
  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  /// [pillboxTitle] is a function that will be used to build the title of the pillbox.
  /// [pillboxContent] is a function that will be used to build the content of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  PillboxDetails({
    required this.selectDataController,
    required this.showDropdown,
    required this.isVisibleOverlay,
    required this.pillboxLayerLink,
    required this.hover,
    required this.pillboxTitle,
    required this.pillboxContent,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own content of the pillbox.
typedef PillboxContentMultiBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own content of the pillbox.
  BuildContext context,

  /// [pillboxContentMultiDetails] is a [PillboxContentMultiDetails] that will be used to build your own content of the pillbox.
  PillboxContentMultiDetails pillboxContentMultiDetails,
);

/// The [PillboxContentMultiDetails] is a class that contains the details to build the content of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
/// [hover] is a boolean that will be used to check if the pillbox is hovered.
/// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
/// [isFocus] is a boolean that will be used to check if the pillbox is focused.
/// [onFocusChange] is a function that will be used to change the focus of the pillbox.
/// [selectChip] is a function that will be used to build the chip of the pillbox.
/// [selectEmptyInfo] is a function that will be used to build the empty info of the pillbox.
/// [selectOverloadInfo] is a function that will be used to build the overload info of the pillbox.
/// [pillboxIcon] is a function that will be used to build the icon of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class PillboxContentMultiDetails {
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  final SelectDataController selectDataController;

  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  bool hover;

  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  bool isFocus;

  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  final void Function() onFocusChange;

  /// [selectChip] is a function that will be used to build the chip of the pillbox.
  final Widget Function(SingleItemCategoryModel singleItemCategory) selectChip;

  /// [selectEmptyInfo] is a function that will be used to build the empty info of the pillbox.
  final Widget Function() selectEmptyInfo;

  /// [selectOverloadInfo] is a function that will be used to build the overload info of the pillbox.
  final Widget Function(int countSelected) selectOverloadInfo;

  /// [pillboxIcon] is a function that will be used to build the icon of the pillbox.
  final Widget Function() pillboxIcon;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxContentMultiDetails] class.
  /// The [PillboxContentMultiDetails] is a class that contains the details to build the content of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  /// [selectChip] is a function that will be used to build the chip of the pillbox.
  /// [selectEmptyInfo] is a function that will be used to build the empty info of the pillbox.
  /// [selectOverloadInfo] is a function that will be used to build the overload info of the pillbox.
  /// [pillboxIcon] is a function that will be used to build the icon of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  PillboxContentMultiDetails({
    required this.selectDataController,
    required this.hover,
    required this.isVisibleOvarlay,
    required this.isFocus,
    required this.onFocusChange,
    required this.selectChip,
    required this.selectEmptyInfo,
    required this.selectOverloadInfo,
    required this.pillboxIcon,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own content of the pillbox.
typedef PillboxContentSingleBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own content of the pillbox.
  BuildContext context,

  /// [pillboxContentSingleDetails] is a [PillboxContentSingleDetails] that will be used to build your own content of the pillbox.
  PillboxContentSingleDetails pillboxContentSingleDetails,
);

/// The [PillboxContentSingleDetails] is a class that contains the details to build the content of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
/// [hover] is a boolean that will be used to check if the pillbox is hovered.
/// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
/// [isFocus] is a boolean that will be used to check if the pillbox is focused.
/// [onFocusChange] is a function that will be used to change the focus of the pillbox.
/// [selectSingle] is a function that will be used to build the single of the pillbox.
/// [selectEmptyInfo] is a function that will be used to build the empty info of the pillbox.
/// [pillboxIcon] is a function that will be used to build the icon of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class PillboxContentSingleDetails {
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  final SelectDataController selectDataController;

  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  bool hover;

  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  bool isFocus;

  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  final void Function() onFocusChange;

  /// [selectSingle] is a function that will be used to build the single of the pillbox.
  final Widget Function() selectSingle;

  /// [selectEmptyInfo] is a function that will be used to build the empty info of the pillbox.
  final Widget Function() selectEmptyInfo;

  /// [pillboxIcon] is a function that will be used to build the icon of the pillbox.
  final Widget Function() pillboxIcon;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxContentSingleDetails] class.
  /// The [PillboxContentSingleDetails] is a class that contains the details to build the content of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  /// [selectSingle] is a function that will be used to build the single of the pillbox.
  /// [selectEmptyInfo] is a function that will be used to build the empty info of the pillbox.
  /// [pillboxIcon] is a function that will be used to build the icon of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  PillboxContentSingleDetails({
    required this.selectDataController,
    required this.hover,
    required this.isVisibleOvarlay,
    required this.isFocus,
    required this.onFocusChange,
    required this.selectSingle,
    required this.selectEmptyInfo,
    required this.pillboxIcon,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own icon of the pillbox.
typedef PillboxIconBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own icon of the pillbox.
  BuildContext context,

  /// [pillboxIconDetails] is a [PillboxIconDetails] that will be used to build your own icon of the pillbox.
  PillboxIconDetails pillboxIconDetails,
);

/// The [PillboxIconDetails] is a class that contains the details to build the icon of the pillbox.
/// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
/// [hover] is a boolean that will be used to check if the pillbox is hovered.
/// [isFocus] is a boolean that will be used to check if the pillbox is focused.
/// [onFocusChange] is a function that will be used to change the focus of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class PillboxIconDetails {
  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  bool hover;

  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  bool isFocus;

  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  final void Function() onFocusChange;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxIconDetails] class.
  /// The [PillboxIconDetails] is a class that contains the details to build the icon of the pillbox.
  /// [isVisibleOvarlay] is a [ValueNotifier] that will be used to show or hide the overlay.
  /// [hover] is a boolean that will be used to check if the pillbox is hovered.
  /// [isFocus] is a boolean that will be used to check if the pillbox is focused.
  /// [onFocusChange] is a function that will be used to change the focus of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  PillboxIconDetails({
    required this.isVisibleOvarlay,
    required this.hover,
    required this.isFocus,
    required this.onFocusChange,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own chip of the pillbox.
typedef SelectChipBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own chip of the pillbox.
  BuildContext context,

  /// [selectChipDetails] is a [SelectChipDetails] that will be used to build your own chip of the pillbox.
  SelectChipDetails selectChipDetails,
);

/// The [SelectChipDetails] is a class that contains the details to build the chip of the pillbox.
/// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the chip of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SelectChipDetails {
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the chip of the pillbox.
  final SingleItemCategoryModel singleItemCategory;

  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  final SelectDataController selectDataController;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectChipDetails] class.
  /// The [SelectChipDetails] is a class that contains the details to build the chip of the pillbox.
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the chip of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const SelectChipDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own single of the pillbox.
typedef SelectSingleBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own single of the pillbox.
  BuildContext context,

  /// [selectSingleDetails] is a [SelectSingleDetails] that will be used to build your own single of the pillbox.
  SelectSingleDetails selectSingleDetails,
);

/// The [SelectSingleDetails] is a class that contains the details to build the single of the pillbox.
/// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the single of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SelectSingleDetails {
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the single of the pillbox.
  final SingleItemCategoryModel singleItemCategory;

  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  final SelectDataController selectDataController;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectSingleDetails] class.
  /// The [SelectSingleDetails] is a class that contains the details to build the single of the pillbox.
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the single of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const SelectSingleDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own empty info of the pillbox.
typedef SelectEmptyInfoBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own empty info of the pillbox.
  BuildContext context,

  /// [selectEmptyInfoDetails] is a [SelectEmptyInfoDetails] that will be used to build your own empty info of the pillbox.
  SelectEmptyInfoDetails selectEmptyInfoDetails,
);

/// The [SelectEmptyInfoDetails] is a class that contains the details to build the empty info of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SelectEmptyInfoDetails {
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectEmptyInfoDetails] class.
  /// The [SelectEmptyInfoDetails] is a class that contains the details to build the empty info of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const SelectEmptyInfoDetails({
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own overload info of the pillbox.
typedef SelectOverloadInfoBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own overload info of the pillbox.
  BuildContext context,

  /// [selectOverloadInfoDetails] is a [SelectOverloadInfoDetails] that will be used to build your own overload info of the pillbox.
  SelectOverloadInfoDetails selectOverloadInfoDetails,
);

/// The [SelectOverloadInfoDetails] is a class that contains the details to build the overload info of the pillbox.
/// [countSelected] is a [int] that will be used to build the overload info of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SelectOverloadInfoDetails {
  /// [countSelected] is a [int] that will be used to build the overload info of the pillbox.
  int countSelected;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectOverloadInfoDetails] class.
  /// The [SelectOverloadInfoDetails] is a class that contains the details to build the overload info of the pillbox.
  /// [countSelected] is a [int] that will be used to build the overload info of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  SelectOverloadInfoDetails({
    required this.countSelected,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own overlay of the pillbox.
typedef DropdownContentOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own overlay of the pillbox.
  BuildContext context,

  /// [dropdownContentOverlayDetails] is a [DropdownContentOverlayDetails] that will be used to build your own overlay of the pillbox.
  DropdownContentOverlayDetails dropdownContentOverlayDetails,
);

/// The [DropdownContentOverlayDetails] is a class that contains the details to build the overlay of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
/// [overlayHide] is a [void] function that will be used to hide the overlay of the pillbox.
/// [layerLink] is a [LayerLink] that will be used to build the overlay of the pillbox.
/// [scrollController] is a [ScrollController] that will be used to build the overlay of the pillbox.
/// [appBarMaxHeight] is a [double] that will be used to build the overlay of the pillbox.
/// [searchController] is a [SearchController] that will be used to build the overlay of the pillbox.
/// [searchBarOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
/// [searchEmptyInfoOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
/// [listDataViewOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class DropdownContentOverlayDetails {
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  final SelectDataController selectDataController;

  /// [overlayHide] is a [void] function that will be used to hide the overlay of the pillbox.
  final void Function() overlayHide;

  /// [layerLink] is a [LayerLink] that will be used to build the overlay of the pillbox.
  final LayerLink layerLink;

  /// [scrollController] is a [ScrollController] that will be used to build the overlay of the pillbox.
  final ScrollController? scrollController;

  /// [appBarMaxHeight] is a [double] that will be used to build the overlay of the pillbox.
  final double? appBarMaxHeight;

  /// [searchController] is a [SearchController] that will be used to build the overlay of the pillbox.
  final SearchController searchController;

  /// [searchBarOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
  final Widget Function() searchBarOverlay;

  /// [searchEmptyInfoOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
  final Widget Function() searchEmptyInfoOverlay;

  /// [listDataViewOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
  final Widget Function() listDataViewOverlay;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [DropdownContentOverlayDetails] class.
  /// The [DropdownContentOverlayDetails] is a class that contains the details to build the overlay of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to get the data of the pillbox.
  /// [overlayHide] is a [void] function that will be used to hide the overlay of the pillbox.
  /// [layerLink] is a [LayerLink] that will be used to build the overlay of the pillbox.
  /// [scrollController] is a [ScrollController] that will be used to build the overlay of the pillbox.
  /// [appBarMaxHeight] is a [double] that will be used to build the overlay of the pillbox.
  /// [searchController] is a [SearchController] that will be used to build the overlay of the pillbox.
  /// [searchBarOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
  /// [searchEmptyInfoOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
  /// [listDataViewOverlay] is a [Widget] function that will be used to build the overlay of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const DropdownContentOverlayDetails({
    required this.selectDataController,
    required this.overlayHide,
    required this.layerLink,
    required this.scrollController,
    required this.appBarMaxHeight,
    required this.searchController,
    required this.searchBarOverlay,
    required this.searchEmptyInfoOverlay,
    required this.listDataViewOverlay,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own search bar of the pillbox.
typedef SearchBarOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search bar of the pillbox.
  BuildContext context,

  /// [searchBarOverlayDetails] is a [SearchBarOverlayDetails] that will be used to build your own search bar of the pillbox.
  SearchBarOverlayDetails searchBarOverlayDetails,
);

/// The [SearchBarOverlayDetails] is a class that contains the details to build the search bar of the pillbox.
/// [searchController] is a [SearchController] that will be used to build the search bar of the pillbox.
/// [searchBarFocusNode] is a [FocusNode] that will be used to build the search bar of the pillbox.
/// [searchBarController] is a [TextEditingController] that will be used to build the search bar of the pillbox.
/// [isFocus] is a [bool] that will be used to build the search bar of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SearchBarOverlayDetails {
  /// [searchController] is a [SearchController] that will be used to build the search bar of the pillbox.
  final SearchController searchController;

  /// [searchBarFocusNode] is a [FocusNode] that will be used to build the search bar of the pillbox.
  final FocusNode searchBarFocusNode;

  /// [searchBarController] is a [TextEditingController] that will be used to build the search bar of the pillbox.
  final TextEditingController searchBarController;

  /// [isFocus] is a [bool] that will be used to build the search bar of the pillbox.
  bool isFocus;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchBarOverlayDetails] class.
  /// The [SearchBarOverlayDetails] is a class that contains the details to build the search bar of the pillbox.
  /// [searchController] is a [SearchController] that will be used to build the search bar of the pillbox.
  /// [searchBarFocusNode] is a [FocusNode] that will be used to build the search bar of the pillbox.
  /// [searchBarController] is a [TextEditingController] that will be used to build the search bar of the pillbox.
  /// [isFocus] is a [bool] that will be used to build the search bar of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  SearchBarOverlayDetails({
    required this.searchController,
    required this.searchBarFocusNode,
    required this.searchBarController,
    required this.isFocus,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own search empty info of the pillbox.
typedef SearchEmptyInfoOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search empty info of the pillbox.
  BuildContext context,

  /// [searchEmptyInfoOverlayDetails] is a [SearchEmptyInfoOverlayDetails] that will be used to build your own search empty info of the pillbox.
  SearchEmptyInfoOverlayDetails searchEmptyInfoOverlayDetails,
);

/// The [SearchEmptyInfoOverlayDetails] is a class that contains the details to build the search empty info of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SearchEmptyInfoOverlayDetails {
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchEmptyInfoOverlayDetails] class.
  /// The [SearchEmptyInfoOverlayDetails] is a class that contains the details to build the search empty info of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const SearchEmptyInfoOverlayDetails({
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own list data view of the pillbox.
typedef ListDataViewOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own list data view of the pillbox.
  BuildContext context,

  /// [listDataViewOverlayDetails] is a [ListDataViewOverlayDetails] that will be used to build your own list data view of the pillbox.
  ListDataViewOverlayDetails listDataViewOverlayDetails,
);

/// The [ListDataViewOverlayDetails] is a class that contains the details to build the list data view of the pillbox.
/// [searchController] is a [SearchController] that will be used to build the list data view of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to build the list data view of the pillbox.
/// [overlayHide] is a [void Function()] that will be used to build the list data view of the pillbox.
/// [categoryNameOverlay] is a [Widget Function(SingleCategoryModel singleCategory)] that will be used to build the list data view of the pillbox.
/// [categoryItemOverlay] is a [Widget Function(SingleItemCategoryModel singleItemCategory)] that will be used to build the list data view of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class ListDataViewOverlayDetails {
  /// [searchController] is a [SearchController] that will be used to build the list data view of the pillbox.
  final SearchController searchController;

  /// [selectDataController] is a [SelectDataController] that will be used to build the list data view of the pillbox.
  final SelectDataController selectDataController;

  /// [overlayHide] is a [void Function()] that will be used to build the list data view of the pillbox.
  final void Function() overlayHide;

  /// [categoryNameOverlay] is a [Widget Function(SingleCategoryModel singleCategory)] that will be used to build the list data view of the pillbox.
  final Widget Function(SingleCategoryModel singleCategory) categoryNameOverlay;

  /// [categoryItemOverlay] is a [Widget Function(SingleItemCategoryModel singleItemCategory)] that will be used to build the list data view of the pillbox.
  final Widget Function(SingleItemCategoryModel singleItemCategory)
      categoryItemOverlay;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [ListDataViewOverlayDetails] class.
  /// The [ListDataViewOverlayDetails] is a class that contains the details to build the list data view of the pillbox.
  /// [searchController] is a [SearchController] that will be used to build the list data view of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to build the list data view of the pillbox.
  /// [overlayHide] is a [void Function()] that will be used to build the list data view of the pillbox.
  /// [categoryNameOverlay] is a [Widget Function(SingleCategoryModel singleCategory)] that will be used to build the list data view of the pillbox.
  /// [categoryItemOverlay] is a [Widget Function(SingleItemCategoryModel singleItemCategory)] that will be used to build the list data view of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const ListDataViewOverlayDetails({
    required this.searchController,
    required this.selectDataController,
    required this.overlayHide,
    required this.categoryNameOverlay,
    required this.categoryItemOverlay,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own category name of the pillbox.
typedef CategoryItemOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category name of the pillbox.
  BuildContext context,

  /// [categoryItemOverlayDetails] is a [CategoryItemOverlayDetails] that will be used to build your own category name of the pillbox.
  CategoryItemOverlayDetails categoryItemOverlayDetails,
);

/// The [CategoryItemOverlayDetails] is a class that contains the details to build the category name of the pillbox.
/// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the category name of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to build the category name of the pillbox.
/// [overlayHide] is a [void Function()] that will be used to build the category name of the pillbox.
/// [hover] is a [bool] that will be used to build the category name of the pillbox.
/// [isSelected] is a [bool] that will be used to build the category name of the pillbox.
/// [onTapSingleItemCategory] is a [void Function()] that will be used to build the category name of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class CategoryItemOverlayDetails {
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the category name of the pillbox.
  final SingleItemCategoryModel singleItemCategory;

  /// [selectDataController] is a [SelectDataController] that will be used to build the category name of the pillbox.
  final SelectDataController selectDataController;

  /// [overlayHide] is a [void Function()] that will be used to build the category name of the pillbox.
  final void Function() overlayHide;

  /// [hover] is a [bool] that will be used to build the category name of the pillbox.
  bool hover;

  /// [isSelected] is a [bool] that will be used to build the category name of the pillbox.
  bool isSelected;

  /// [onTapSingleItemCategory] is a [void Function()] that will be used to build the category name of the pillbox.
  final void Function() onTapSingleItemCategory;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryItemOverlayDetails] class.
  /// The [CategoryItemOverlayDetails] is a class that contains the details to build the category name of the pillbox.
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the category name of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to build the category name of the pillbox.
  /// [overlayHide] is a [void Function()] that will be used to build the category name of the pillbox.
  /// [hover] is a [bool] that will be used to build the category name of the pillbox.
  /// [isSelected] is a [bool] that will be used to build the category name of the pillbox.
  /// [onTapSingleItemCategory] is a [void Function()] that will be used to build the category name of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  CategoryItemOverlayDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.overlayHide,
    required this.hover,
    required this.isSelected,
    required this.onTapSingleItemCategory,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own category name of the pillbox.
typedef CategoryNameOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category name of the pillbox.
  BuildContext context,

  /// [categoryNameOverlayDetails] is a [CategoryNameOverlayDetails] that will be used to build your own category name of the pillbox.
  CategoryNameOverlayDetails categoryNameOverlayDetails,
);

/// The [CategoryNameOverlayDetails] is a class that contains the details to build the category name of the pillbox.
/// [singleCategory] is a [SingleCategoryModel] that will be used to build the category name of the pillbox.
/// [selectDataController] is a [SelectDataController] that will be used to build the category name of the pillbox.
/// [hover] is a [bool] that will be used to build the category name of the pillbox.
/// [onTapCategory] is a [void Function()] that will be used to build the category name of the pillbox.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class CategoryNameOverlayDetails {
  /// [singleCategory] is a [SingleCategoryModel] that will be used to build the category name of the pillbox.
  final SingleCategoryModel singleCategory;

  /// [selectDataController] is a [SelectDataController] that will be used to build the category name of the pillbox.
  final SelectDataController selectDataController;

  /// [hover] is a [bool] that will be used to build the category name of the pillbox.
  bool hover;

  /// [onTapCategory] is a [void Function()] that will be used to build the category name of the pillbox.
  final void Function() onTapCategory;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryNameOverlayDetails] class.
  /// The [CategoryNameOverlayDetails] is a class that contains the details to build the category name of the pillbox.
  /// [singleCategory] is a [SingleCategoryModel] that will be used to build the category name of the pillbox.
  /// [selectDataController] is a [SelectDataController] that will be used to build the category name of the pillbox.
  /// [hover] is a [bool] that will be used to build the category name of the pillbox.
  /// [onTapCategory] is a [void Function()] that will be used to build the category name of the pillbox.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  CategoryNameOverlayDetails({
    required this.singleCategory,
    required this.selectDataController,
    required this.hover,
    required this.onTapCategory,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own dropdown content modal.
typedef DropdownContentModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own dropdown content modal.
  BuildContext context,

  /// [dropdownContentModalDetails] is a [DropdownContentModalDetails] that will be used to build your own dropdown content modal.
  DropdownContentModalDetails dropdownContentModalDetails,
);

/// The [DropdownContentModalDetails] is a class that contains the details to build the dropdown content modal.
/// [scrollController] is a [ScrollController] that will be used to build the dropdown content modal.
/// [selectDataController] is a [SelectDataController] that will be used to build the dropdown content modal.
/// [searchController] is a [SearchController] that will be used to build the dropdown content modal.
/// [titleModal] is a [Widget Function()] that will be used to build the dropdown content modal.
/// [doneButtonModal] is a [Widget Function()] that will be used to build the dropdown content modal.
/// [searchBarModal] is a [Widget Function()] that will be used to build the dropdown content modal.
/// [searchEmptyInfoModal] is a [Widget Function()] that will be used to build the dropdown content modal.
/// [listDataViewModal] is a [Widget Function()] that will be used to build the dropdown content modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class DropdownContentModalDetails {
  final ScrollController scrollController;
  final SelectDataController selectDataController;
  final SearchController searchController;
  final Widget Function() titleModal;
  final Widget Function() doneButtonModal;
  final Widget Function() searchBarModal;
  final Widget Function() searchEmptyInfoModal;
  final Widget Function() listDataViewModal;
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [DropdownContentModalDetails] class.
  /// The [DropdownContentModalDetails] is a class that contains the details to build the dropdown content modal.
  /// [scrollController] is a [ScrollController] that will be used to build the dropdown content modal.
  /// [selectDataController] is a [SelectDataController] that will be used to build the dropdown content modal.
  /// [searchController] is a [SearchController] that will be used to build the dropdown content modal.
  /// [titleModal] is a [Widget Function()] that will be used to build the dropdown content modal.
  /// [doneButtonModal] is a [Widget Function()] that will be used to build the dropdown content modal.
  /// [searchBarModal] is a [Widget Function()] that will be used to build the dropdown content modal.
  /// [searchEmptyInfoModal] is a [Widget Function()] that will be used to build the dropdown content modal.
  /// [listDataViewModal] is a [Widget Function()] that will be used to build the dropdown content modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const DropdownContentModalDetails({
    required this.scrollController,
    required this.selectDataController,
    required this.searchController,
    required this.titleModal,
    required this.doneButtonModal,
    required this.searchBarModal,
    required this.searchEmptyInfoModal,
    required this.listDataViewModal,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own done button modal.
typedef DoneButtonModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own done button modal.
  BuildContext context,

  /// [doneButtonModalDetails] is a [DoneButtonModalDetails] that will be used to build your own done button modal.
  DoneButtonModalDetails doneButtonModalDetails,
);

/// The [DoneButtonModalDetails] is a class that contains the details to build the done button modal.
/// [hideModal] is a [void Function()] that will be used to build the done button modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class DoneButtonModalDetails {
  /// [hideModal] is a [void Function()] that will be used to build the done button modal.
  final void Function() hideModal;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [DoneButtonModalDetails] class.
  /// The [DoneButtonModalDetails] is a class that contains the details to build the done button modal.
  /// [hideModal] is a [void Function()] that will be used to build the done button modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const DoneButtonModalDetails({
    required this.hideModal,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own title modal.
typedef TitleModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own title modal.
  BuildContext context,

  /// [tittleModalDetails] is a [TittleModalDetails] that will be used to build your own title modal.
  TittleModalDetails tittleModalDetails,
);

/// The [TittleModalDetails] is a class that contains the details to build the title modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class TittleModalDetails {
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [TittleModalDetails] class.
  /// The [TittleModalDetails] is a class that contains the details to build the title modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const TittleModalDetails({
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own search bar modal.
typedef SearchBarModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search bar modal.
  BuildContext context,

  /// [searchBarModalDetails] is a [SearchBarModalDetails] that will be used to build your own search bar modal.
  SearchBarModalDetails searchBarModalDetails,
);

/// The [SearchBarModalDetails] is a class that contains the details to build the search bar modal.
/// [searchController] is a [SearchController] that will be used to build the search bar modal.
/// [searchBarModalFocusNode] is a [FocusNode] that will be used to build the search bar modal.
/// [searchBarModalController] is a [TextEditingController] that will be used to build the search bar modal.
/// [isFocus] is a [bool] that will be used to build the search bar modal.
/// [focusModalController] is a [void Function()] that will be used to build the search bar modal.
/// [onChangedSearchBarController] is a [void Function()] that will be used to build the search bar modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SearchBarModalDetails {
  /// [searchController] is a [SearchController] that will be used to build the search bar modal.
  final SearchController searchController;

  /// [searchBarModalFocusNode] is a [FocusNode] that will be used to build the search bar modal.
  final FocusNode searchBarModalFocusNode;

  /// [searchBarModalController] is a [TextEditingController] that will be used to build the search bar modal.
  final TextEditingController searchBarModalController;

  /// [isFocus] is a [bool] that will be used to build the search bar modal.
  bool isFocus;

  /// [focusModalController] is a [void Function()] that will be used to build the search bar modal.
  final void Function() focusModalController;

  /// [onChangedSearchBarController] is a [void Function()] that will be used to build the search bar modal.
  final void Function() onChangedSearchBarController;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchBarModalDetails] class.
  /// The [SearchBarModalDetails] is a class that contains the details to build the search bar modal.
  /// [searchController] is a [SearchController] that will be used to build the search bar modal.
  /// [searchBarModalFocusNode] is a [FocusNode] that will be used to build the search bar modal.
  /// [searchBarModalController] is a [TextEditingController] that will be used to build the search bar modal.
  /// [isFocus] is a [bool] that will be used to build the search bar modal.
  /// [focusModalController] is a [void Function()] that will be used to build the search bar modal.
  /// [onChangedSearchBarController] is a [void Function()] that will be used to build the search bar modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  SearchBarModalDetails({
    required this.searchController,
    required this.searchBarModalFocusNode,
    required this.searchBarModalController,
    required this.isFocus,
    required this.focusModalController,
    required this.onChangedSearchBarController,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own search empty info modal.
typedef SearchEmptyInfoModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search empty info modal.
  BuildContext context,

  /// [searchEmptyInfoModalDetails] is a [SearchEmptyInfoModalDetails] that will be used to build your own search empty info modal.
  SearchEmptyInfoModalDetails searchEmptyInfoModalDetails,
);

/// The [SearchEmptyInfoModalDetails] is a class that contains the details to build the search empty info modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class SearchEmptyInfoModalDetails {
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchEmptyInfoModalDetails] class.
  /// The [SearchEmptyInfoModalDetails] is a class that contains the details to build the search empty info modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const SearchEmptyInfoModalDetails({
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own list data view modal.
typedef ListDataViewModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own list data view modal.
  BuildContext context,

  /// [listDataViewModalDetails] is a [ListDataViewModalDetails] that will be used to build your own list data view modal.
  ListDataViewModalDetails listDataViewModalDetails,
);

/// The [ListDataViewModalDetails] is a class that contains the details to build the list data view modal.
/// [scrollController] is a [ScrollController] that will be used to build the list data view modal.
/// [searchController] is a [SearchController] that will be used to build the list data view modal.
/// [selectDataController] is a [SelectDataController] that will be used to build the list data view modal.
/// [categoryNameModal] is a [Widget Function(SingleCategoryModel singleCategory)] that will be used to build the list data view modal.
/// [categoryItemModal] is a [Widget Function(SingleItemCategoryModel singleItemCategory)] that will be used to build the list data view modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class ListDataViewModalDetails {
  /// [scrollController] is a [ScrollController] that will be used to build the list data view modal.
  final ScrollController scrollController;

  /// [searchController] is a [SearchController] that will be used to build the list data view modal.
  final SearchController searchController;

  /// [selectDataController] is a [SelectDataController] that will be used to build the list data view modal.
  final SelectDataController selectDataController;

  /// [categoryNameModal] is a [Widget Function(SingleCategoryModel singleCategory)] that will be used to build the list data view modal.
  final Widget Function(SingleCategoryModel singleCategory) categoryNameModal;

  /// [categoryItemModal] is a [Widget Function(SingleItemCategoryModel singleItemCategory)] that will be used to build the list data view modal.
  final Widget Function(SingleItemCategoryModel singleItemCategory)
      categoryItemModal;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [ListDataViewModalDetails] class.
  /// The [ListDataViewModalDetails] is a class that contains the details to build the list data view modal.
  /// [scrollController] is a [ScrollController] that will be used to build the list data view modal.
  /// [searchController] is a [SearchController] that will be used to build the list data view modal.
  /// [selectDataController] is a [SelectDataController] that will be used to build the list data view modal.
  /// [categoryNameModal] is a [Widget Function(SingleCategoryModel singleCategory)] that will be used to build the list data view modal.
  /// [categoryItemModal] is a [Widget Function(SingleItemCategoryModel singleItemCategory)] that will be used to build the list data view modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const ListDataViewModalDetails({
    required this.scrollController,
    required this.searchController,
    required this.selectDataController,
    required this.categoryNameModal,
    required this.categoryItemModal,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own category name modal.
typedef CategoryNameModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category name modal.
  BuildContext context,

  /// [categoryNameModalDetails] is a [CategoryNameModalDetails] that will be used to build your own category name modal.
  CategoryNameModalDetails categoryNameModalDetails,
);

/// The [CategoryNameModalDetails] is a class that contains the details to build the category name modal.
/// [singleCategory] is a [SingleCategoryModel] that will be used to build the category name modal.
/// [selectDataController] is a [SelectDataController] that will be used to build the category name modal.
/// [onTapCategory] is a [void Function()] that will be used to build the category name modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class CategoryNameModalDetails {
  /// [singleCategory] is a [SingleCategoryModel] that will be used to build the category name modal.
  final SingleCategoryModel singleCategory;

  /// [selectDataController] is a [SelectDataController] that will be used to build the category name modal.
  final SelectDataController selectDataController;

  /// [onTapCategory] is a [void Function()] that will be used to build the category name modal.
  final void Function() onTapCategory;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryNameModalDetails] class.
  /// The [CategoryNameModalDetails] is a class that contains the details to build the category name modal.
  /// [singleCategory] is a [SingleCategoryModel] that will be used to build the category name modal.
  /// [selectDataController] is a [SelectDataController] that will be used to build the category name modal.
  /// [onTapCategory] is a [void Function()] that will be used to build the category name modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  const CategoryNameModalDetails({
    required this.singleCategory,
    required this.selectDataController,
    required this.onTapCategory,
    required this.globalSettings,
  });
}

/// Is a function that will be used to build your own category item modal.
typedef CategoryItemModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category item modal.
  BuildContext context,

  /// [categoryItemModalDetails] is a [CategoryItemModalDetails] that will be used to build your own category item modal.
  CategoryItemModalDetails categoryItemModalDetails,
);

/// The [CategoryItemModalDetails] is a class that contains the details to build the category item modal.
/// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the category item modal.
/// [selectDataController] is a [SelectDataController] that will be used to build the category item modal.
/// [isSelected] is a [bool] that will be used to build the category item modal.
/// [onTapSingleItemCategory] is a [void Function()] that will be used to build the category item modal.
/// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
class CategoryItemModalDetails {
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the category item modal.
  final SingleItemCategoryModel singleItemCategory;

  /// [selectDataController] is a [SelectDataController] that will be used to build the category item modal.
  final SelectDataController selectDataController;

  /// [isSelected] is a [bool] that will be used to build the category item modal.
  bool isSelected;

  /// [onTapSingleItemCategory] is a [void Function()] that will be used to build the category item modal.
  final void Function() onTapSingleItemCategory;

  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryItemModalDetails] class.
  /// The [CategoryItemModalDetails] is a class that contains the details to build the category item modal.
  /// [singleItemCategory] is a [SingleItemCategoryModel] that will be used to build the category item modal.
  /// [selectDataController] is a [SelectDataController] that will be used to build the category item modal.
  /// [isSelected] is a [bool] that will be used to build the category item modal.
  /// [onTapSingleItemCategory] is a [void Function()] that will be used to build the category item modal.
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  CategoryItemModalDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.isSelected,
    required this.onTapSingleItemCategory,
    required this.globalSettings,
  });
}
