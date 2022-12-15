import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

class SearchController extends ChangeNotifier {
  final List<SingleCategoryModel> _data;
  final List<SingleCategoryModel> _results;

  List<SingleCategoryModel> get getResults => _results;

  SearchController(this._data)
      : _results = _data.toList(); // Fix pass by reference.

  void findSearchDataResults(String value) {
    // Will be improve in next version.
    _results.clear();

    for (var category in _data) {
      List<SingleItemCategoryModel> tempSingleItemCategoryList = [];

      for (var singleItemCategory in category.getSingleItemCategoryList) {
        if (singleItemCategory.getNameSingleItem
            .toLowerCase()
            .startsWith(value.toLowerCase())) {
          tempSingleItemCategoryList.add(singleItemCategory);
        }
      }

      if (tempSingleItemCategoryList.isNotEmpty) {
        _results.add(
          SingleCategoryModel(
            nameCategory: category.getNameCategory,
            singleItemCategoryList: tempSingleItemCategoryList,
          ),
        );
      }
    }
    notifyListeners();
  }
}
