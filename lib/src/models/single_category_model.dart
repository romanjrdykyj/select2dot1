import 'package:select2dot1/src/models/single_item_category_model.dart';

class SingleCategoryModel {
  final String? _nameCategory;
  final List<SingleItemCategoryModel> _singleItemCategoryList;

  String? get getNameCategory {
    return _nameCategory;
  }

  List<SingleItemCategoryModel> get getSingleItemCategoryList {
    return _singleItemCategoryList;
  }

  @override
  int get hashCode => _nameCategory.hashCode ^ _singleItemCategoryList.hashCode;

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
