import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

/// SelectDataController is a class that will be used to control select data and contains all data.
class SelectDataController extends ChangeNotifier {
  /// All data pass to the package.
  /// It is required.
  List<SingleCategoryModel> data;

  /// This is a boolean to set multi select or single select.
  /// Default is true.
  bool isMultiSelect;

  /// This is initial selected data.
  /// This data will be add to the [selectedList] when the class is created.
  /// If [isMultiSelect] is false, must be null or length <= 1.
  final List<SingleItemCategoryModel>? initSelected;

  /// This is a list of [SingleItemCategoryModel] selected items.
  final List<SingleItemCategoryModel> selectedList = [];

  /// SelectDataController is a class that will be used to control select data.
  /// Use this constructor to create a [SelectDataController] object.
  /// [data] is required.
  /// If [isMultiSelect] is false, [initSelected] must be null or length <= 1.
  SelectDataController({
    required this.data,
    this.isMultiSelect = true,
    this.initSelected,
  }) : assert(
          isMultiSelect || initSelected == null || initSelected.length <= 1,
          'For single select, initSelected must be null or length <= 1',
        ) {
    addGroupSelectChip(initSelected);
  }

  /// Function to set an SelectDataController to another SelectDataController with the same reference.
  void copyWith(SelectDataController selectDataController) {
    data = selectDataController.data;
    isMultiSelect = selectDataController.isMultiSelect;
    notifyListeners();
  }

  /// Function to clear all selected items.
  void clearSelectedList() {
    selectedList.clear();
    notifyListeners();
  }

  /// Add items from list of [SingleItemCategoryModel] to the [selectedList],
  /// when items are in the [data] and not in the [selectedList].
  void addGroupSelectChip(List<SingleItemCategoryModel>? singleItemList) {
    if (singleItemList == null) {
      return;
    }

    if (!isMultiSelect) {
      setSingleSelect(singleItemList.first);
    }

    for (var singleItem in singleItemList) {
      addSelectChip(singleItem);
    }
    notifyListeners();
  }

  /// Remove items from list of [SingleItemCategoryModel] to the [selectedList],
  /// when items are in the [data] and not in the [selectedList].
  void removeGroupSelectChip(List<SingleItemCategoryModel>? singleItemList) {
    if (singleItemList == null) {
      return;
    }

    for (var singleItem in singleItemList) {
      removeSingleSelectedChip(singleItem);
    }
    notifyListeners();
  }

  /// Add single [SingleItemCategoryModel] to the [selectedList],
  /// when items are in the [data] and not in the [selectedList].
  void addSelectChip(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return;
    }

    if (!_singleItemContainsInSelected(singleItem)) {
      selectedList.add(singleItem);
      notifyListeners();
    }
  }

  /// Remove single [SingleItemCategoryModel] from the [selectedList],
  /// when items are in the [data] and not in the [selectedList].
  void removeSingleSelectedChip(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return;
    }

    if (_singleItemContainsInSelected(singleItem)) {
      // Its ok.
      // ignore: avoid-ignoring-return-values
      selectedList.remove(singleItem);
      notifyListeners();
    }
  }

  /// Set single [SingleItemCategoryModel] to the [selectedList],
  /// when items are in the [data] and not in the [selectedList].
  void setSingleSelect(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return;
    }

    selectedList.clear();
    selectedList.add(singleItem);
    notifyListeners();
  }

  /// Check if the [SingleItemCategoryModel] is in the [selectedList].
  bool _singleItemContainsInSelected(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return selectedList.contains(singleItem);
  }
}
