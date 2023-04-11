import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/modal/dropdown_content_modal.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_item_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/category_name_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/done_button_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/dropdown_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/list_data_view_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/loading_data_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_bar_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/title_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class DropdownModal extends StatelessWidget {
  final SelectDataController selectDataController;
  final DropdownContentModalBuilder? dropdownContentModalBuilder;
  final DropdownModalSettings dropdownModalSettings;
  final TitleModalBuilder? titleModalBuilder;
  final TitleModalSettings titleModalSettings;
  final DoneButtonModalBuilder? doneButtonModalBuilder;
  final DoneButtonModalSettings doneButtonModalSettings;

  final bool isSearchable;
  final SearchBarModalBuilder? searchBarModalBuilder;
  final SearchBarModalSettings searchBarModalSettings;
  final LoadingDataModalBuilder? loadingDataModalBuilder;
  final LoadingDataModalSettings loadingDataModalSettings;
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;
  final ListDataViewModalBuilder? listDataViewModalBuilder;
  final ListDataViewModalSettings listDataViewModalSettings;
  final CategoryItemModalBuilder? categoryItemModalBuilder;
  final CategoryItemModalSettings categoryItemModalSettings;
  final CategoryNameModalBuilder? categoryNameModalBuilder;
  final CategoryNameModalSettings categoryNameModalSettings;
  final GlobalSettings globalSettings;

  const DropdownModal({
    super.key,
    required this.selectDataController,
    required this.dropdownContentModalBuilder,
    required this.dropdownModalSettings,
    required this.titleModalBuilder,
    required this.titleModalSettings,
    required this.doneButtonModalBuilder,
    required this.doneButtonModalSettings,
    required this.isSearchable,
    required this.searchBarModalBuilder,
    required this.searchBarModalSettings,
    required this.loadingDataModalBuilder,
    required this.loadingDataModalSettings,
    required this.searchEmptyInfoModalBuilder,
    required this.searchEmptyInfoModalSettings,
    required this.listDataViewModalBuilder,
    required this.listDataViewModalSettings,
    required this.categoryItemModalBuilder,
    required this.categoryItemModalSettings,
    required this.categoryNameModalBuilder,
    required this.categoryNameModalSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: dropdownModalSettings.initialChildSize,
      minChildSize: dropdownModalSettings.minChildSize,
      maxChildSize: dropdownModalSettings.maxChildSize,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Material(
          color: Colors.transparent,
          child: DropdownContentModal(
            selectDataController: selectDataController,
            dropdownContentModalBuilder: dropdownContentModalBuilder,
            dropdownModalSettings: dropdownModalSettings,
            titleModalBuilder: titleModalBuilder,
            titleModalSettings: titleModalSettings,
            doneButtonModalBuilder: doneButtonModalBuilder,
            doneButtonModalSettings: doneButtonModalSettings,
            isSearchable: isSearchable,
            searchBarModalBuilder: searchBarModalBuilder,
            searchBarModalSettings: searchBarModalSettings,
            loadingDataModalBuilder: loadingDataModalBuilder,
            loadingDataModalSettings: loadingDataModalSettings,
            searchEmptyInfoModalBuilder: searchEmptyInfoModalBuilder,
            searchEmptyInfoModalSettings: searchEmptyInfoModalSettings,
            scrollController: scrollController,
            listDataViewModalBuilder: listDataViewModalBuilder,
            listDataViewModalSettings: listDataViewModalSettings,
            categoryItemModalBuilder: categoryItemModalBuilder,
            categoryItemModalSettings: categoryItemModalSettings,
            categoryNameModalBuilder: categoryNameModalBuilder,
            categoryNameModalSettings: categoryNameModalSettings,
            globalSettings: globalSettings,
          ),
        );
      },
    );
  }
}
