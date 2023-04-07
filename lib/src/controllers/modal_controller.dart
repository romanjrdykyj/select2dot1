import 'dart:async';

import 'package:flutter/material.dart';
import 'package:select2dot1/src/dropdown_modal.dart';
import 'package:select2dot1/src/utils/animated_state.dart';

mixin ModalController on AnimatedState {
  void showModal(context) {
    unawaited(
      showModalBottomSheet(
        isScrollControlled: true,
        shape: widget.dropdownModalSettings.shape,
        backgroundColor: widget.dropdownModalSettings.backgroundColor,
        barrierColor: widget.dropdownModalSettings.barrierColor,
        context: context,
        builder: (context) {
          return DropdownModal(
            selectDataController: widget.selectDataController,
            dropdownContentModalBuilder: widget.dropdownContentModalBuilder,
            dropdownModalSettings: widget.dropdownModalSettings,
            titleModalBuilder: widget.titleModalBuilder,
            titleModalSettings: widget.titleModalSettings,
            doneButtonModalBuilder: widget.doneButtonModalBuilder,
            doneButtonModalSettings: widget.doneButtonModalSettings,
            isSearchable: widget.isSearchable,
            searchBarModalBuilder: widget.searchBarModalBuilder,
            searchBarModalSettings: widget.searchBarModalSettings,
            loadingDataModalBuilder: widget.loadingDataModalBuilder,
            loadingDataModalSettings: widget.loadingDataModalSettings,
            searchEmptyInfoModalBuilder: widget.searchEmptyInfoModalBuilder,
            searchEmptyInfoModalSettings: widget.searchEmptyInfoModalSettings,
            listDataViewModalBuilder: widget.listDataViewModalBuilder,
            listDataViewModalSettings: widget.listDataViewModalSettings,
            categoryItemModalBuilder: widget.categoryItemModalBuilder,
            categoryItemModalSettings: widget.categoryItemModalSettings,
            categoryNameModalBuilder: widget.categoryNameModalBuilder,
            categoryNameModalSettings: widget.categoryNameModalSettings,
            globalSettings: widget.globalSettings,
          );
        },
      ),
    );
  }
}
