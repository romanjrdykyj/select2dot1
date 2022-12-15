import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

class SelectDataController extends ChangeNotifier {
  final List<SingleCategoryModel> _data;
  final List<SingleItemCategoryModel>? _initSelected;
  final bool _isMultiSelect;
  final List<SingleItemCategoryModel> _selectedList = [];

  List<SingleCategoryModel> get getData {
    return _data;
  }

  bool get getIsMultiSelect {
    return _isMultiSelect;
  }

  List<SingleItemCategoryModel> get getSelectedList {
    return _selectedList;
  }

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

  void clearSelectedList() {
    _selectedList.clear();
    notifyListeners();
  }

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

  bool _singleItemContainsInSelected(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return _selectedList.contains(singleItem);
  }

  bool _singeItemContainsInData(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return _data.any(
      (element) => element.getSingleItemCategoryList.contains(singleItem),
    );
  }
}
