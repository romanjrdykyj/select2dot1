import 'package:flutter/material.dart';

class SingleItemCategoryModel {
  final String _nameSingleItem;
  final dynamic _value;
  final String? _extraInfoSingleItem;
  final Widget? _avatarSingleItem;

  String get getNameSingleItem {
    return _nameSingleItem;
  }

  dynamic get getValue {
    return _value;
  }

  String? get getExtraInfoSingleItem {
    return _extraInfoSingleItem;
  }

  Widget? get getAvatarSingleItem {
    return _avatarSingleItem;
  }

  @override
  int get hashCode => _nameSingleItem.hashCode;

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
