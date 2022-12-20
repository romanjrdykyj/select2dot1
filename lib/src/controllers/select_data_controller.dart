import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

/// SelectDataController is a class that will be used to select data.
/// SelectDataController is a controller class.
/// SelectDataController class extends [ChangeNotifier].
class SelectDataController extends ChangeNotifier {
  /// The [_data] is all data pass to the package.
  /// It is required.
  final List<SingleCategoryModel> _data;

  /// The [_initSelected] is initial selected data.
  /// This data will be add to the [_selectedList] when the class is created.
  /// if [_isMultiSelect] is false, [_initSelected] must be null or length <= 1.
  final List<SingleItemCategoryModel>? _initSelected;

  /// The [_isMultiSelect] is a boolean to set multi select or single select.
  /// Default is true.
  final bool _isMultiSelect;

  /// The [_selectedList] is a list of [SingleItemCategoryModel] that is selected.
  final List<SingleItemCategoryModel> _selectedList = [];

  /// Getter for [_data].
  List<SingleCategoryModel> get getData {
    return _data;
  }

  /// Getter for [_isMultiSelect].
  bool get getIsMultiSelect {
    return _isMultiSelect;
  }

  /// Getter for [_selectedList].
  List<SingleItemCategoryModel> get getSelectedList {
    return _selectedList;
  }

  /// Creating an argument constructor of SelectDataController class.
  /// [_data] is required.
  /// [_isMultiSelect] is optional, default is true.
  /// [_initSelected] is optional, default is null.
  /// if [_isMultiSelect] is false, [_initSelected] must be null or length <= 1.
  /// On create, [_selectedList] will be add [_initSelected].
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

  /// Clear the [_selectedList].
  void clearSelectedList() {
    _selectedList.clear();
    notifyListeners();
  }

  /// Add group the [SingleItemCategoryModel] from the [_selectedList].
  /// If the [SingleItemCategoryModel] is null, do nothing.
  /// If the [SingleItemCategoryModel] is in the [_data], and in the [_selectedList], add it from the [_selectedList].
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

  /// Remove group the [SingleItemCategoryModel] from the [_selectedList].
  /// If the [SingleItemCategoryModel] is null, do nothing.
  /// If the [SingleItemCategoryModel] is in the [_data], and in the [_selectedList], remove it from the [_selectedList].
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

  /// Set single the [SingleItemCategoryModel] is in the [_data].
  /// If the [SingleItemCategoryModel] is null, return false.
  /// If the [SingleItemCategoryModel] is not in the [_data], do nothing.
  /// If the [SingleItemCategoryModel] is in the [_data], set it to the [_selectedList].
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

  /// Add single the [SingleItemCategoryModel] to the [_selectedList].
  /// If the [SingleItemCategoryModel] is null, do nothing.
  /// If the [SingleItemCategoryModel] is not in the [_data], do nothing.
  /// If the [SingleItemCategoryModel] is in the [_data] and not in the [_selectedList], add it to the [_selectedList].
  /// If the [SingleItemCategoryModel] is in the [_data] and in the [_selectedList], do nothing.
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

  /// Remove single the [SingleItemCategoryModel] from the [_selectedList].
  /// If the [SingleItemCategoryModel] is null, do nothing.
  /// If the [SingleItemCategoryModel] is not in the [_data], do nothing.
  /// If the [SingleItemCategoryModel] is in the [_data] and [_selectedList], remove it from the [_selectedList].
  /// If the [SingleItemCategoryModel] is in the [_data] and not in the [_selectedList], do nothing.
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
  /// If the [SingleItemCategoryModel] is null, return false.
  /// If the [SingleItemCategoryModel] is in the [_selectedList], return true.
  /// If the [SingleItemCategoryModel] is not in the [_selectedList], return false.
  bool _singleItemContainsInSelected(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return _selectedList.contains(singleItem);
  }

  /// Check if the [SingleItemCategoryModel] is in the [_data].
  /// If the [SingleItemCategoryModel] is null, return false.
  /// If the [SingleItemCategoryModel] is in the [_data], return true.
  /// If the [SingleItemCategoryModel] is not in the [_data], return false.
  bool _singeItemContainsInData(SingleItemCategoryModel? singleItem) {
    if (singleItem == null) {
      return false;
    }

    return _data.any(
      (element) => element.getSingleItemCategoryList.contains(singleItem),
    );
  }
}
