import 'package:flutter/material.dart';

/// This is a model class which contains the name of the item, the value of the item, the extra info of the item, and the avatar of the item.
class SingleItemCategoryModel {
  /// The name of the single item.
  /// It is required.
  final String nameSingleItem;

  /// The value of the single item.
  /// It is optional
  /// [value] preffer set to avoid duplicate items when two objects [nameSingleItem] is the same.
  final dynamic value;

  /// The extra info of the single item.
  /// It is optional.
  final String? extraInfoSingleItem;

  /// The avatar of the single item.
  /// It is optional.
  final Widget? avatarSingleItem;

  @override
  int get hashCode => nameSingleItem.hashCode;

  /// Creating an argument constructor of [SingleItemCategoryModel] class.
  const SingleItemCategoryModel({
    required this.nameSingleItem,
    this.value,
    this.extraInfoSingleItem,
    this.avatarSingleItem,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SingleItemCategoryModel &&
          runtimeType == other.runtimeType &&
          nameSingleItem == other.nameSingleItem &&
          value == other.value;
}
