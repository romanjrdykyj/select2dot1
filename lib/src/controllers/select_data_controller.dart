import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

/// SelectDataController is a class that will be used to control select data.
class SelectDataController extends ChangeNotifier {
  /// All data pass to the package.
  /// It is required.
  final List<SingleCategoryModel> _data;

  /// Is initial selected data.
  /// This data will be add to the [_selectedList] when the class is created.
  /// if [_isMultiSelect] is false, must be null or length <= 1.
  final List<SingleItemCategoryModel>? _initSelected;

  /// Is a boolean to set multi select or single select.
  /// Default is true.
  final bool _isMultiSelect;

  /// Is a list of [SingleItemCategoryModel] selected items.
  final List<SingleItemCategoryModel> _selectedList = [];

  /// Get list of all data pass to the package.
  List<SingleCategoryModel> get getData {
    return _data;
  }

  /// Get select mode. True is multi select, false is single select.
  bool get getIsMultiSelect {
    return _isMultiSelect;
  }

  /// Get list of selected items.
  List<SingleItemCategoryModel> get getSelectedList {
    return _selectedList;
  }

  /// SelectDataController is a class that will be used to control select data.
  /// Use this constructor to create a [SelectDataController] object.
  /// [data] is required.
  /// if [isMultiSelect] is false, [initSelected] must be null or length <= 1.
  SelectDataController({
    required List<SingleCategoryModel> data,
    bool isMultiSelect = true,
    List<SingleItemCategoryModel>? initSelected,
  })  : _data = data,
        _isMultiSelect = isMultiSelect,
        _initSelected = initSelected,
        assert(
          isMultiSelect || initSelected == null || initSelected.length <= 1,
          'For single select, initSelected must be null or length <= 1',
        ) {
    addGroupSelectChip(_initSelected);
  }

  /// Function to clear all selected items.
  void clearSelectedList() {
    _selectedList.clear();
    notifyListeners();
  }

  /// Add items from list of [SingleItemCategoryModel] to the [_selectedList],
  /// when items are in the [_data] and not in the [_selectedList].
  void addGroupSelectChip(List<SingleItemCategoryModel>? singleItemList) {
    if (singleItemList == null) {
      return;
    }

    for (var singleItem in singleItemList) {
      if (_singeItemContainsInData(singleItem) &&
          !_singleItemContainsInSelected(singleItem)) {
        // its ok.
        // ignore: avoid-ignoring-return-values
        _data.any(
          (element) => element.getSingleItemCategoryList.any((element) {
            if (element == singleItem) {
              _selectedList.add(element);

              return true;
            }

            return false;
          }),
        );
      }
    }
    notifyListeners();
  }

  /// Remove items from list of [SingleItemCategoryModel] to the [_selectedList],
  /// when items are in the [_data] and not in the [_selectedList].
  void removeGroupSelectChip(List<SingleItemCategoryModel>? singleItemList) {
    if (singleItemList == null) {
      return;
    }

    for (var singleItem in singleItemList) {
      if (_singeItemContainsInData(singleItem) &&
          _singleItemContainsInSelected(singleItem)) {
        // its ok.
        // ignore: avoid-ignoring-return-values
        _selectedList.remove(singleItem);
      }
    }
    notifyListeners();
  }

  /// Set single [SingleItemCategoryModel] to the [_selectedList],
  /// when items are in the [_data] and not in the [_selectedList].
  void setSingleSelect(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return;
    }
    if (!_singeItemContainsInData(singleItem)) {
      return;
    }

    _selectedList.clear();
    _selectedList.add(singleItem);
    notifyListeners();
  }

  /// Add single [SingleItemCategoryModel] to the [_selectedList],
  /// when items are in the [_data] and not in the [_selectedList].
  void addSelectChip(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return;
    }
    if (!_singeItemContainsInData(singleItem)) {
      return;
    }

    if (!_singleItemContainsInSelected(singleItem)) {
      _selectedList.add(singleItem);
      notifyListeners();
    }
  }

  /// Remove single [SingleItemCategoryModel] from the [_selectedList],
  /// when items are in the [_data] and not in the [_selectedList].
  void removeSingleSelectedChip(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return;
    }
    if (!_singeItemContainsInData(singleItem)) {
      return;
    }

    if (_singleItemContainsInSelected(singleItem)) {
      // its ok.
      // ignore: avoid-ignoring-return-values
      _selectedList.remove(singleItem);
      notifyListeners();
    }
  }

  /// Check if the [SingleItemCategoryModel] is in the [_selectedList].
  bool _singleItemContainsInSelected(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return _selectedList.contains(singleItem);
  }

  /// Check if the [SingleItemCategoryModel] is in the [_data].
  bool _singeItemContainsInData(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return _data.any(
      (element) => element.getSingleItemCategoryList.contains(singleItem),
    );
  }
}
