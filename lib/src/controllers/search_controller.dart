import 'package:flutter/material.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';

/// SearchController is a class that will be used to search data.
// Its okay.
// ignore: prefer-match-file-name
class SearchControllerSelect2dot1 extends ChangeNotifier {
  /// Old length memory of search results.
  int oldLength = 0;

  /// Data to search.
  /// It is required.
  final List<SingleCategoryModel> _data;

  /// Search results.
  /// First it will be same as [_data].
  final List<SingleCategoryModel> _results;

  /// Getter for [_results] find by [findSearchDataResults].
  List<SingleCategoryModel> get getResults => _results;

  /// Creating an argument constructor of [SearchControllerSelect2dot1] class.
  /// [data] is data to search. [data] is required.
  SearchControllerSelect2dot1(this._data)
      : _results = _data.toList() // Fix pass by reference.
  {
    oldLength = countLength();
  }

  /// Find search data results function.
  /// This function will be used to find search data results.
  /// [value] is required string pattern to search.
  void findSearchDataResults(String value) {
    // Will be improve in next version.
    oldLength = countLength();
    _results.clear();

    for (var category in _data) {
      List<SingleItemCategoryModel> tempSingleItemCategoryList = [];

      for (var singleItemCategory in category.singleItemCategoryList) {
        if (singleItemCategory.nameSingleItem
            .toLowerCase()
            .contains(value.toLowerCase())) {
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

    int newLength = countLength();
    if (oldLength != newLength) {
      notifyListeners();
    }
  }

  /// Count length of search results function.
  int countLength() {
    int length = 0;
    for (var category in _results) {
      length += category.singleItemCategoryList.length;
    }

    return length;
  }
}
