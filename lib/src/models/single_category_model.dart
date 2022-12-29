import 'package:select2dot1/src/models/single_item_category_model.dart';

/// SingleCategoryModel is a model class which contains the name of the category and the list of items in the category.
class SingleCategoryModel {
  /// The name of the category.
  /// It is optional.
  final String? _nameCategory;

  /// The list of items in the category.
  /// It is required.
  final List<SingleItemCategoryModel> _singleItemCategoryList;

  /// Getter for [_nameCategory].
  String? get getNameCategory {
    return _nameCategory;
  }

  /// Getter for [_singleItemCategoryList].
  List<SingleItemCategoryModel> get getSingleItemCategoryList {
    return _singleItemCategoryList;
  }

  @override
  int get hashCode => _nameCategory.hashCode ^ _singleItemCategoryList.hashCode;

  /// Creating an argument constructor of SingleCategoryModel class.
  const SingleCategoryModel({
    String? nameCategory,
    required List<SingleItemCategoryModel> singleItemCategoryList,
  })  : _nameCategory = nameCategory,
        _singleItemCategoryList = singleItemCategoryList;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SingleCategoryModel &&
          runtimeType == other.runtimeType &&
          _nameCategory == other._nameCategory &&
          _singleItemCategoryList == other._singleItemCategoryList;
}
