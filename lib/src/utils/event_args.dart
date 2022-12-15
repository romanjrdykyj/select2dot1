// ignore_for_file: prefer-match-file-name
import 'package:flutter/material.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';

typedef PillboxTitleBuilder = Widget Function(
  BuildContext context,
  PillboxTitleDetails pillboxTitleDetails,
);

class PillboxTitleDetails {
  final ValueNotifier<bool>? isVisibleOvarlay;
  bool hover;
  bool isFocus;
  final void Function() onFocusChange;
  final GlobalSettings globalSettings;

  PillboxTitleDetails({
    required this.isVisibleOvarlay,
    required this.hover,
    required this.isFocus,
    required this.onFocusChange,
    required this.globalSettings,
  });
}

typedef PillboxBuilder = Widget Function(
  BuildContext context,
  PillboxDetails pillboxDetails,
);

class PillboxDetails {
  final SelectDataController selectDataController;
  final void Function() showDropdown;
  final ValueNotifier<bool>? isVisibleOverlay;
  final LayerLink? pillboxLayerLink;
  bool hover;
  final Widget Function() pillboxTitle;
  final Widget Function() pillboxContent;
  final GlobalSettings globalSettings;

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

typedef PillboxContentMultiBuilder = Widget Function(
  BuildContext context,
  PillboxContentMultiDetails pillboxContentMultiDetails,
);

class PillboxContentMultiDetails {
  final SelectDataController selectDataController;
  bool hover;
  final ValueNotifier<bool>? isVisibleOvarlay;
  bool isFocus;
  final void Function() onFocusChange;
  final Widget Function(SingleItemCategoryModel singleItemCategory) selectChip;
  final Widget Function() selectEmptyInfo;
  final Widget Function(int countSelected) selectOverloadInfo;
  final Widget Function() pillboxIcon;
  final GlobalSettings globalSettings;

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

typedef PillboxContentSingleBuilder = Widget Function(
  BuildContext context,
  PillboxContentSingleDetails pillboxContentSingleDetails,
);

class PillboxContentSingleDetails {
  final SelectDataController selectDataController;
  bool hover;
  final ValueNotifier<bool>? isVisibleOvarlay;
  bool isFocus;
  final void Function() onFocusChange;
  final Widget Function() selectSingle;
  final Widget Function() selectEmptyInfo;
  final Widget Function() pillboxIcon;
  final GlobalSettings globalSettings;

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

typedef PillboxIconBuilder = Widget Function(
  BuildContext context,
  PillboxIconDetails pillboxIconDetails,
);

class PillboxIconDetails {
  final ValueNotifier<bool>? isVisibleOvarlay;
  bool hover;
  bool isFocus;
  final void Function() onFocusChange;
  final GlobalSettings globalSettings;

  PillboxIconDetails({
    required this.isVisibleOvarlay,
    required this.hover,
    required this.isFocus,
    required this.onFocusChange,
    required this.globalSettings,
  });
}

typedef SelectChipBuilder = Widget Function(
  BuildContext context,
  SelectChipDetails selectChipDetails,
);

class SelectChipDetails {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  final GlobalSettings globalSettings;

  const SelectChipDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.globalSettings,
  });
}

typedef SelectSingleBuilder = Widget Function(
  BuildContext context,
  SelectSingleDetails selectSingleDetails,
);

class SelectSingleDetails {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  final GlobalSettings globalSettings;

  const SelectSingleDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.globalSettings,
  });
}

typedef SelectEmptyInfoBuilder = Widget Function(
  BuildContext context,
  SelectEmptyInfoDetails selectEmptyInfoDetails,
);

class SelectEmptyInfoDetails {
  final GlobalSettings globalSettings;

  const SelectEmptyInfoDetails({
    required this.globalSettings,
  });
}

typedef SelectOverloadInfoBuilder = Widget Function(
  BuildContext context,
  SelectOverloadInfoDetails selectOverloadInfoDetails,
);

class SelectOverloadInfoDetails {
  int countSelected;
  final GlobalSettings globalSettings;

  SelectOverloadInfoDetails({
    required this.countSelected,
    required this.globalSettings,
  });
}

typedef DropdownContentOverlayBuilder = Widget Function(
  BuildContext context,
  DropdownContentOverlayDetails dropdownContentOverlayDetails,
);

class DropdownContentOverlayDetails {
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  final LayerLink layerLink;
  final ScrollController? scrollController;
  final double? appBarMaxHeight;
  final SearchController searchController;
  final Widget Function() searchBarOverlay;
  final Widget Function() searchEmptyInfoOverlay;
  final Widget Function() listDataViewOverlay;
  final GlobalSettings globalSettings;

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

typedef SearchBarOverlayBuilder = Widget Function(
  BuildContext context,
  SearchBarOverlayDetails searchBarOverlayDetails,
);

class SearchBarOverlayDetails {
  final SearchController searchController;
  final FocusNode searchBarFocusNode;
  final TextEditingController searchBarController;
  bool isFocus;
  final GlobalSettings globalSettings;

  SearchBarOverlayDetails({
    required this.searchController,
    required this.searchBarFocusNode,
    required this.searchBarController,
    required this.isFocus,
    required this.globalSettings,
  });
}

typedef SearchEmptyInfoOverlayBuilder = Widget Function(
  BuildContext context,
  SearchEmptyInfoOverlayDetails searchEmptyInfoOverlayDetails,
);

class SearchEmptyInfoOverlayDetails {
  final GlobalSettings globalSettings;

  const SearchEmptyInfoOverlayDetails({
    required this.globalSettings,
  });
}

typedef ListDataViewOverlayBuilder = Widget Function(
  BuildContext context,
  ListDataViewOverlayDetails listDataViewOverlayDetails,
);

class ListDataViewOverlayDetails {
  final SearchController searchController;
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  final Widget Function(SingleCategoryModel singleCategory) categoryNameOverlay;
  final Widget Function(SingleItemCategoryModel singleItemCategory)
      categoryItemOverlay;
  final GlobalSettings globalSettings;

  const ListDataViewOverlayDetails({
    required this.searchController,
    required this.selectDataController,
    required this.overlayHide,
    required this.categoryNameOverlay,
    required this.categoryItemOverlay,
    required this.globalSettings,
  });
}

typedef CategoryItemOverlayBuilder = Widget Function(
  BuildContext context,
  CategoryItemOverlayDetails categoryItemOverlayDetails,
);

class CategoryItemOverlayDetails {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  bool hover;
  bool isSelected;
  final void Function() onTapSingleItemCategory;
  final GlobalSettings globalSettings;

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

typedef CategoryNameOverlayBuilder = Widget Function(
  BuildContext context,
  CategoryNameOverlayDetails categoryNameOverlayDetails,
);

class CategoryNameOverlayDetails {
  final SingleCategoryModel singleCategory;
  final SelectDataController selectDataController;
  bool hover;
  final void Function() onTapCategory;
  final GlobalSettings globalSettings;

  CategoryNameOverlayDetails({
    required this.singleCategory,
    required this.selectDataController,
    required this.hover,
    required this.onTapCategory,
    required this.globalSettings,
  });
}

typedef DropdownContentModalBuilder = Widget Function(
  BuildContext context,
  DropdownContentModalDetails dropdownContentModalDetails,
);

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

typedef DoneButtonModalBuilder = Widget Function(
  BuildContext context,
  DoneButtonModalDetails doneButtonModalDetails,
);

class DoneButtonModalDetails {
  final void Function() hideModal;
  final GlobalSettings globalSettings;

  const DoneButtonModalDetails({
    required this.hideModal,
    required this.globalSettings,
  });
}

typedef TitleModalBuilder = Widget Function(
  BuildContext context,
  TittleModalDetails tittleModalDetails,
);

class TittleModalDetails {
  final GlobalSettings globalSettings;

  const TittleModalDetails({
    required this.globalSettings,
  });
}

typedef SearchBarModalBuilder = Widget Function(
  BuildContext context,
  SearchBarModalDetails searchBarModalDetails,
);

class SearchBarModalDetails {
  final SearchController searchController;
  final FocusNode searchBarModalFocusNode;
  final TextEditingController searchBarModalController;
  bool isFocus;
  final void Function() focusModalController;
  final void Function() onChangedSearchBarController;
  final GlobalSettings globalSettings;

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

typedef SearchEmptyInfoModalBuilder = Widget Function(
  BuildContext context,
  SearchEmptyInfoModalDetails searchEmptyInfoModalDetails,
);

class SearchEmptyInfoModalDetails {
  final GlobalSettings globalSettings;

  const SearchEmptyInfoModalDetails({
    required this.globalSettings,
  });
}

typedef ListDataViewModalBuilder = Widget Function(
  BuildContext context,
  ListDataViewModalDetails listDataViewModalDetails,
);

class ListDataViewModalDetails {
  final ScrollController scrollController;
  final SearchController searchController;
  final SelectDataController selectDataController;
  final Widget Function(SingleCategoryModel singleCategory) categoryNameModal;
  final Widget Function(SingleItemCategoryModel singleItemCategory)
      categoryItemModal;
  final GlobalSettings globalSettings;

  const ListDataViewModalDetails({
    required this.scrollController,
    required this.searchController,
    required this.selectDataController,
    required this.categoryNameModal,
    required this.categoryItemModal,
    required this.globalSettings,
  });
}

typedef CategoryNameModalBuilder = Widget Function(
  BuildContext context,
  CategoryNameModalDetails categoryNameModalDetails,
);

class CategoryNameModalDetails {
  final SingleCategoryModel singleCategory;
  final SelectDataController selectDataController;
  final void Function() onTapCategory;
  final GlobalSettings globalSettings;

  const CategoryNameModalDetails({
    required this.singleCategory,
    required this.selectDataController,
    required this.onTapCategory,
    required this.globalSettings,
  });
}

typedef CategoryItemModalBuilder = Widget Function(
  BuildContext context,
  CategoryItemModalDetails categoryItemModalDetails,
);

class CategoryItemModalDetails {
  final SingleItemCategoryModel singleItemCategory;
  final SelectDataController selectDataController;
  bool isSelected;
  final void Function() onTapSingleItemCategory;
  final GlobalSettings globalSettings;

  CategoryItemModalDetails({
    required this.singleItemCategory,
    required this.selectDataController,
    required this.isSelected,
    required this.onTapSingleItemCategory,
    required this.globalSettings,
  });
}
