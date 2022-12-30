import 'package:select2dot1/src/models/single_item_category_model.dart';

/// This is a model class which contains the name of the category and the list of items in the category.
class SingleCategoryModel {
  /// The name of the single category.
  /// It is optional.
  final String? nameCategory;

  /// The list of items in the single category.
  /// It is required.
  final List<SingleItemCategoryModel> singleItemCategoryList;

  @override
  int get hashCode => nameCategory.hashCode ^ singleItemCategoryList.hashCode;

  /// Creating an argument constructor of [SingleCategoryModel] class.
  const SingleCategoryModel({
    this.nameCategory,
    required this.singleItemCategoryList,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SingleCategoryModel &&
          runtimeType == other.runtimeType &&
          nameCategory == other.nameCategory &&
          singleItemCategoryList == other.singleItemCategoryList;
}
