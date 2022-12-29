import 'package:flutter/material.dart';

/// This is a model class which contains the name of the item, the value of the item, the extra info of the item, and the avatar of the item.
class SingleItemCategoryModel {
  /// The name of the item.
  /// It is required.
  final String _nameSingleItem;

  /// The value of the item.
  /// It is optional
  /// [_value] preffer set to avoid duplicate items when [_nameSingleItem] is the same.
  final dynamic _value;

  /// The extra info of the item.
  /// It is optional.
  final String? _extraInfoSingleItem;

  /// The avatar of the item.
  /// It is optional.
  final Widget? _avatarSingleItem;

  /// Get name of SingleItemCategoryModel.
  String get getNameSingleItem {
    return _nameSingleItem;
  }

  /// Get unique value of SingleItemCategoryModel.
  dynamic get getValue {
    return _value;
  }

  /// Get extra info of SingleItemCategoryModel.
  String? get getExtraInfoSingleItem {
    return _extraInfoSingleItem;
  }

  /// Get avatar of SingleItemCategoryModel.
  Widget? get getAvatarSingleItem {
    return _avatarSingleItem;
  }

  @override
  int get hashCode => _nameSingleItem.hashCode;

  /// Creating an argument constructor of [SingleItemCategoryModel] class.
  const SingleItemCategoryModel({
    required String nameSingleItem,
    dynamic value,
    String? extraInfoSingleItem,
    Widget? avatarSingleItem,
  })  : _nameSingleItem = nameSingleItem,
        _value = value,
        _extraInfoSingleItem = extraInfoSingleItem,
        _avatarSingleItem = avatarSingleItem;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SingleItemCategoryModel &&
          runtimeType == other.runtimeType &&
          _nameSingleItem == other._nameSingleItem &&
          _value == other._value;
}
