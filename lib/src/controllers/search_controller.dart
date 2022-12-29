import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

/// SearchController is a class that will be used to search data.
class SearchController extends ChangeNotifier {
  /// Data to search.
  /// It is required.
  final List<SingleCategoryModel> _data;

  /// Search results.
  /// First it will be same as [_data].
  final List<SingleCategoryModel> _results;

  /// Getter for [_results] find by [findSearchDataResults].
  List<SingleCategoryModel> get getResults => _results;

  /// Creating an argument constructor of SearchController class.
  /// [data] is data to search. [data] is required.
  SearchController(this._data)
      : _results = _data.toList(); // Fix pass by reference.

  /// Find search data results function.
  /// This function will be used to find search data results.
  /// [value] is required string pattern to search.
  void findSearchDataResults(String value) {
    // Will be improve in next version.
    _results.clear();

    for (var category in _data) {
      List<SingleItemCategoryModel> tempSingleItemCategoryList = [];

      for (var singleItemCategory in category.singleItemCategoryList) {
        if (singleItemCategory.nameSingleItem
            .toLowerCase()
            .startsWith(value.toLowerCase())) {
          tempSingleItemCategoryList.add(singleItemCategory);
        }
      }

      if (tempSingleItemCategoryList.isNotEmpty) {
        _results.add(
          SingleCategoryModel(
            nameCategory: category.nameCategory,
            singleItemCategoryList: tempSingleItemCategoryList,
          ),
        );
      }
    }
    notifyListeners();
  }
}
