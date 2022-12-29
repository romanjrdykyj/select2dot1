// ignore_for_file: prefer-match-file-name
import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';

/// This is a function that will be used to build your own title of the pillbox.
typedef PillboxTitleBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own title of the pillbox.
  BuildContext context,

  /// [pillboxTitleDetails] is a [PillboxTitleDetails] that will be used to build your own title of the pillbox.
  PillboxTitleDetails pillboxTitleDetails,
);

/// This is a class which contains necessary details to build your own title of the pillbox.
class PillboxTitleDetails {
  /// This is a boolean[ValueNotifier] representing if the overlay is visible.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// This is a boolean representing if the pillbox is hovered.
  bool hover;

  /// This is a boolean representing if the pillbox is focused.
  bool isFocus;

  /// This is emmbedded function services change the focus of the pillbox.
  final void Function() onFocusChange;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxTitleDetails] class.
  PillboxTitleDetails({
    required this.isVisibleOvarlay,
    required this.hover,
    required this.isFocus,
    required this.onFocusChange,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own pillbox.
typedef PillboxBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own pillbox.
  BuildContext context,

  /// [pillboxDetails] is a [PillboxDetails] that will be used to build your own pillbox.
  PillboxDetails pillboxDetails,
);

/// This is a class which contains necessary details to build your own pillbox.
class PillboxDetails {
  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is embedded function services show the dropdown.
  final void Function() showDropdown;

  /// This is a boolean[ValueNotifier] representing if the overlay is visible.
  final ValueNotifier<bool>? isVisibleOverlay;

  /// This is a [LayerLink] that will be used to link the pillbox to the dropdown.
  final LayerLink? pillboxLayerLink;

  /// This is a boolean representing if the pillbox is hovered.
  bool hover;

  /// This is a function returning a [Widget] of the title of the pillbox.
  final Widget Function() pillboxTitle;

  /// This is a function returning a [Widget] of the content of the pillbox.
  final Widget Function() pillboxContent;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxDetails] class.
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

/// This is a function that will be used to build your own multi content of the pillbox.
typedef PillboxContentMultiBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own multi content of the pillbox.
  BuildContext context,

  /// [pillboxContentMultiDetails] is a [PillboxContentMultiDetails] that will be used to build your own multi content of the pillbox.
  PillboxContentMultiDetails pillboxContentMultiDetails,
);

/// This is a class which contains necessary details to build your own multi content of the pillbox.
class PillboxContentMultiDetails {
  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a boolean representing if the pillbox is hovered.
  bool hover;

  /// This is a boolean[ValueNotifier] representing if the overlay is visible.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// This is a boolean representing if the pillbox is focused.
  bool isFocus;

  /// This is embedded function services change the focus of the pillbox.
  final void Function() onFocusChange;

  /// This is a function returning a [Widget] of the the chip of the pillbox.
  final Widget Function(SingleItemCategoryModel singleItemCategory) selectChip;

  /// This is a function returning a [Widget] of the empty info of the pillbox.
  final Widget Function() selectEmptyInfo;

  /// This is a function returning a [Widget] of the overload info of the pillbox.
  final Widget Function(int countSelected) selectOverloadInfo;

  /// This is a function returning a [Widget] of the icon of the pillbox.
  final Widget Function() pillboxIcon;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxContentMultiDetails] class.
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

/// This is a function that will be used to build your own single content of the pillbox.
typedef PillboxContentSingleBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own single content of the pillbox.
  BuildContext context,

  /// [pillboxContentSingleDetails] is a [PillboxContentSingleDetails] that will be used to build your own single content of the pillbox.
  PillboxContentSingleDetails pillboxContentSingleDetails,
);

/// This is a class which contains necessary details to build your own single content of the pillbox.
class PillboxContentSingleDetails {
  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a boolean representing if the pillbox is hovered.
  bool hover;

  /// This is a boolean[ValueNotifier] representing if the overlay is visible.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// This is a boolean representing if the pillbox is focused.
  bool isFocus;

  /// This is embedded function services change the focus of the pillbox.
  final void Function() onFocusChange;

  /// This is a function returning a [Widget] of the single of the pillbox.
  final Widget Function() selectSingle;

  /// This is a function returning a [Widget] of the empty info of the pillbox.
  final Widget Function() selectEmptyInfo;

  /// This is a function returning a [Widget] of the icon of the pillbox.
  final Widget Function() pillboxIcon;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxContentSingleDetails] class.
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

/// This is a function that will be used to build your own icon of the pillbox.
typedef PillboxIconBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own icon of the pillbox.
  BuildContext context,

  /// [pillboxIconDetails] is a [PillboxIconDetails] that will be used to build your own icon of the pillbox.
  PillboxIconDetails pillboxIconDetails,
);

/// This is a class which contains necessary details to build your own icon of the pillbox.
class PillboxIconDetails {
  /// This is a [ValueNotifier] representing if the overlay is visible.
  final ValueNotifier<bool>? isVisibleOvarlay;

  /// This is a boolean representing if the pillbox is hovered.
  bool hover;

  /// This is a boolean representing if the pillbox is focused.
  bool isFocus;

  /// This is embedded function services change the focus of the pillbox.
  final void Function() onFocusChange;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [PillboxIconDetails] class.
  PillboxIconDetails({
    required this.isVisibleOvarlay,
    required this.hover,
    required this.isFocus,
    required this.onFocusChange,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own chip of the pillbox.
typedef SelectChipBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own chip of the pillbox.
  BuildContext context,

  /// [selectChipDetails] is a [SelectChipDetails] that will be used to build your own chip of the pillbox.
  SelectChipDetails selectChipDetails,
);

/// This is a class which contains necessary details to build your own chip of the pillbox.
class SelectChipDetails {
  /// This is a [SingleItemCategoryModel] that will be used to build the chip of the pillbox.
  final SingleItemCategoryModel singleItemCategory;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectChipDetails] class.
  const SelectChipDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own select single of the pillbox.
typedef SelectSingleBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own select single of the pillbox.
  BuildContext context,

  /// [selectSingleDetails] is a [SelectSingleDetails] that will be used to build your own select single of the pillbox.
  SelectSingleDetails selectSingleDetails,
);

/// This is a class which contains necessary details to build your own select single of the pillbox.
class SelectSingleDetails {
  /// This is a [SingleItemCategoryModel] that will be used to build the select single of the pillbox.
  final SingleItemCategoryModel singleItemCategory;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectSingleDetails] class.
  const SelectSingleDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own empty info of the pillbox.
typedef SelectEmptyInfoBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own empty info of the pillbox.
  BuildContext context,

  /// [selectEmptyInfoDetails] is a [SelectEmptyInfoDetails] that will be used to build your own empty info of the pillbox.
  SelectEmptyInfoDetails selectEmptyInfoDetails,
);

/// This is a class which contains necessary details to build your own empty info of the pillbox.
class SelectEmptyInfoDetails {
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectEmptyInfoDetails] class.
  const SelectEmptyInfoDetails({
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own overload info of the pillbox.
typedef SelectOverloadInfoBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own overload info of the pillbox.
  BuildContext context,

  /// [selectOverloadInfoDetails] is a [SelectOverloadInfoDetails] that will be used to build your own overload info of the pillbox.
  SelectOverloadInfoDetails selectOverloadInfoDetails,
);

/// This is a class which contains necessary details to build your own overload info of the pillbox.
class SelectOverloadInfoDetails {
  /// This is a int representing the number of selected items.
  int countSelected;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SelectOverloadInfoDetails] class.
  SelectOverloadInfoDetails({
    required this.countSelected,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own dropdown content (overlay).
typedef DropdownContentOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own dropdown content (overlay).
  BuildContext context,

  /// [dropdownContentOverlayDetails] is a [DropdownContentOverlayDetails] that will be used to build your own dropdown content (overlay).
  DropdownContentOverlayDetails dropdownContentOverlayDetails,
);

/// This is a class which contains necessary details to build your own dropdown content (overlay).
class DropdownContentOverlayDetails {
  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is embedded function services hide the overlay of the pillbox.
  final void Function() overlayHide;

  /// This is a [LayerLink] that will be used to link the dropdown to the pillbox.
  final LayerLink layerLink;

  /// This is a [ScrollController] that will be used to controll the scroll of the dropdown.
  final ScrollController? scrollController;

  /// This is a [double] representing the maximum height of the app bar (MaterialAppBar).
  final double? appBarMaxHeight;

  /// This is a [SearchController] that will be used to search the data.
  final SearchController searchController;

  /// This is a function returning a [Widget] of the searchBar.
  final Widget Function() searchBarOverlay;

  /// This is a function returning a [Widget] of the search empty info.
  final Widget Function() searchEmptyInfoOverlay;

  /// This is a function returning a [Widget] of the list data view.
  final Widget Function() listDataViewOverlay;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [DropdownContentOverlayDetails] class.
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

/// This is a function that will be used to build your own search bar.
typedef SearchBarOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search bar.
  BuildContext context,

  /// [searchBarOverlayDetails] is a [SearchBarOverlayDetails] that will be used to build your own search bar.
  SearchBarOverlayDetails searchBarOverlayDetails,
);

/// This is a class which contains necessary details to build your own search bar.
class SearchBarOverlayDetails {
  /// This is a [SearchController] that will be used to build the search bar.
  final SearchController searchController;

  /// This is a [FocusNode] that will be used to build the search bar.
  final FocusNode searchBarFocusNode;

  /// This is a [TextEditingController] that will be used to build the search bar.
  final TextEditingController searchBarController;

  /// This is a boolean representing the focus of the search bar.
  bool isFocus;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchBarOverlayDetails] class.
  SearchBarOverlayDetails({
    required this.searchController,
    required this.searchBarFocusNode,
    required this.searchBarController,
    required this.isFocus,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own search empty info of the pillbox.
typedef SearchEmptyInfoOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search empty info of the pillbox.
  BuildContext context,

  /// [searchEmptyInfoOverlayDetails] is a [SearchEmptyInfoOverlayDetails] that will be used to build your own search empty info of the pillbox.
  SearchEmptyInfoOverlayDetails searchEmptyInfoOverlayDetails,
);

/// This is a class which contains necessary details to build your own search empty info of the pillbox.
class SearchEmptyInfoOverlayDetails {
  /// [globalSettings] is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchEmptyInfoOverlayDetails] class.
  const SearchEmptyInfoOverlayDetails({
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own list data view of the pillbox.
typedef ListDataViewOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own list data view of the pillbox.
  BuildContext context,

  /// [listDataViewOverlayDetails] is a [ListDataViewOverlayDetails] that will be used to build your own list data view of the pillbox.
  ListDataViewOverlayDetails listDataViewOverlayDetails,
);

/// This is a class which contains necessary details to build your own list data view of the pillbox.
class ListDataViewOverlayDetails {
  /// This is a [ScrollController] that will be used to control the scroll in list data view.
  final SearchController searchController;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is emmbeded function services hide overlay.
  final void Function() overlayHide;

  /// This is a function returning a [Widget] of the categoryNameOverlay.
  final Widget Function(SingleCategoryModel singleCategory) categoryNameOverlay;

  /// This is a function returning a [Widget] of the categoryItemOverlay.
  final Widget Function(SingleItemCategoryModel singleItemCategory)
      categoryItemOverlay;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [ListDataViewOverlayDetails] class.
  const ListDataViewOverlayDetails({
    required this.searchController,
    required this.selectDataController,
    required this.overlayHide,
    required this.categoryNameOverlay,
    required this.categoryItemOverlay,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own category name.
typedef CategoryItemOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category name.
  BuildContext context,

  /// [categoryItemOverlayDetails] is a [CategoryItemOverlayDetails] that will be used to build your own category name.
  CategoryItemOverlayDetails categoryItemOverlayDetails,
);

/// The [CategoryItemOverlayDetails] is a class which contains necessary details to build your own category name.
class CategoryItemOverlayDetails {
  /// This is a [SingleItemCategoryModel] that will be used to build the category item.
  final SingleItemCategoryModel singleItemCategory;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is emmbeded function services hide overlay.
  final void Function() overlayHide;

  /// This is a boolean representing the hover state of the category item.
  bool hover;

  /// This is a boolean representing the selected state of the category item.
  bool isSelected;

  /// This is emmbeded function services tap on SingleItemCategory.
  final void Function() onTapSingleItemCategory;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryItemOverlayDetails] class.
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

/// This is a function that will be used to build your own category name.
typedef CategoryNameOverlayBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category name.
  BuildContext context,

  /// [categoryNameOverlayDetails] is a [CategoryNameOverlayDetails] that will be used to build your own category name.
  CategoryNameOverlayDetails categoryNameOverlayDetails,
);

/// This is a class which contains necessary details to build your own category name.
class CategoryNameOverlayDetails {
  /// This is a [SingleCategoryModel] that will be used to build the category name.
  final SingleCategoryModel singleCategory;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a boolean representing the hover state of the category.
  bool hover;

  /// This is emmbeded function services tap on category name.
  final void Function() onTapCategory;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryNameOverlayDetails] class.
  CategoryNameOverlayDetails({
    required this.singleCategory,
    required this.selectDataController,
    required this.hover,
    required this.onTapCategory,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own dropdown content modal.
typedef DropdownContentModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own dropdown content modal.
  BuildContext context,

  /// [dropdownContentModalDetails] is a [DropdownContentModalDetails] that will be used to build your own dropdown content modal.
  DropdownContentModalDetails dropdownContentModalDetails,
);

/// This is a class which contains necessary details to build your own dropdown content modal.
class DropdownContentModalDetails {
  /// This is a [ScrollController] that will be used to control the scroll in dropdown content modal.
  final ScrollController scrollController;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a [SearchController] that will be used to control the search.
  final SearchController searchController;

  /// This is a function returning a [Widget] of the title modal.
  final Widget Function() titleModal;

  /// This is a function returning a [Widget] of the done button modal.
  final Widget Function() doneButtonModal;

  /// This is a function returning a [Widget] of the search bar modal.
  final Widget Function() searchBarModal;

  /// This is a function returning a [Widget] of the search empty info modal.
  final Widget Function() searchEmptyInfoModal;

  /// This is a function returning a [Widget] of the list data view.
  final Widget Function() listDataViewModal;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [DropdownContentModalDetails] class.
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

/// This is a function that will be used to build your own done button modal.
typedef DoneButtonModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own done button modal.
  BuildContext context,

  /// [doneButtonModalDetails] is a [DoneButtonModalDetails] that will be used to build your own done button modal.
  DoneButtonModalDetails doneButtonModalDetails,
);

/// This is a class which contains necessary details to build your own done button modal.
class DoneButtonModalDetails {
  /// This is emmbeded function services hide the modal.
  final void Function() hideModal;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [DoneButtonModalDetails] class.
  const DoneButtonModalDetails({
    required this.hideModal,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own title modal.
typedef TitleModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own title modal.
  BuildContext context,

  /// [tittleModalDetails] is a [TittleModalDetails] that will be used to build your own title modal.
  TittleModalDetails tittleModalDetails,
);

/// This is a class which contains necessary details to build your own title modal.
class TittleModalDetails {
  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [TittleModalDetails] class.
  const TittleModalDetails({
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own search bar modal.
typedef SearchBarModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search bar modal.
  BuildContext context,

  /// [searchBarModalDetails] is a [SearchBarModalDetails] that will be used to build your own search bar modal.
  SearchBarModalDetails searchBarModalDetails,
);

/// This is a class which contains necessary details to build your own search bar modal.
class SearchBarModalDetails {
  /// This is a [SearchController] that will be used to control the search.
  final SearchController searchController;

  /// This is a [FocusNode] that will be used to control focus of SearchBar.
  final FocusNode searchBarModalFocusNode;

  /// This is a [TextEditingController] of SearchBar that will be used to build the search bar modal.
  final TextEditingController searchBarModalController;

  /// This is a booelan represents the [searchBarModalFocusNode] is focused or not.
  bool isFocus;

  /// This is embedded function services when the [FocusNode] of SearchBar is changed.
  final void Function() focusModalController;

  /// This is emmbeded function services when the [SearchController] is changed.
  final void Function() onChangedSearchBarController;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchBarModalDetails] class.
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

/// This is a function that will be used to build your own search empty info modal.
typedef SearchEmptyInfoModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own search empty info modal.
  BuildContext context,

  /// [searchEmptyInfoModalDetails] is a [SearchEmptyInfoModalDetails] that will be used to build your own search empty info modal.
  SearchEmptyInfoModalDetails searchEmptyInfoModalDetails,
);

/// This is a class which contains necessary details to build your own search empty info modal.
class SearchEmptyInfoModalDetails {
  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [SearchEmptyInfoModalDetails] class.
  const SearchEmptyInfoModalDetails({
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own list data view modal.
typedef ListDataViewModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own list data view modal.
  BuildContext context,

  /// [listDataViewModalDetails] is a [ListDataViewModalDetails] that will be used to build your own list data view modal.
  ListDataViewModalDetails listDataViewModalDetails,
);

/// This is a class which contains necessary details to build your own list data view modal.
class ListDataViewModalDetails {
  /// This is a [ScrollController] that will be used to control the scroll in the list data view modal.
  final ScrollController scrollController;

  /// This is a [SearchController] that will be used to control the search.
  final SearchController searchController;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a function returning a [Widget] of the CategoryNameModal.
  final Widget Function(SingleCategoryModel singleCategory) categoryNameModal;

  /// This is a function returning a [Widget] of the CategoryItemModal.
  final Widget Function(SingleItemCategoryModel singleItemCategory)
      categoryItemModal;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [ListDataViewModalDetails] class.
  const ListDataViewModalDetails({
    required this.scrollController,
    required this.searchController,
    required this.selectDataController,
    required this.categoryNameModal,
    required this.categoryItemModal,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own category name modal.
typedef CategoryNameModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category name modal.
  BuildContext context,

  /// [categoryNameModalDetails] is a [CategoryNameModalDetails] that will be used to build your own category name modal.
  CategoryNameModalDetails categoryNameModalDetails,
);

/// This is a class which contains necessary details to build your own category name modal.
class CategoryNameModalDetails {
  /// This is a [SingleCategoryModel] that will be used to build the category name modal.
  final SingleCategoryModel singleCategory;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a emmbeded function service tap on CategoryName.
  final void Function() onTapCategory;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryNameModalDetails] class.
  const CategoryNameModalDetails({
    required this.singleCategory,
    required this.selectDataController,
    required this.onTapCategory,
    required this.globalSettings,
  });
}

/// This is a function that will be used to build your own category item modal.
typedef CategoryItemModalBuilder = Widget Function(
  /// [context] is a [BuildContext] that will be used to build your own category item modal.
  BuildContext context,

  /// [categoryItemModalDetails] is a [CategoryItemModalDetails] that will be used to build your own category item modal.
  CategoryItemModalDetails categoryItemModalDetails,
);

/// This is a class which contains necessary details to build your own category item modal.
class CategoryItemModalDetails {
  /// This is a [SingleItemCategoryModel] that will be used to build the category item modal.
  final SingleItemCategoryModel singleItemCategory;

  /// This is a [SelectDataController] that will be used to control the selection of the category item and get data from it.
  final SelectDataController selectDataController;

  /// This is a boolean representing whether the category item is selected or not.
  bool isSelected;

  /// This is a emmbeded function service tap on SignleItemCategory.
  final void Function() onTapSingleItemCategory;

  /// This is a [GlobalSettings] that will be used to get the global settings.
  final GlobalSettings globalSettings;

  /// Creating an argument constructor of [CategoryItemModalDetails] class.
  CategoryItemModalDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.isSelected,
    required this.onTapSingleItemCategory,
    required this.globalSettings,
  });
}
