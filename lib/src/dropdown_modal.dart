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

class DropdownModal extends StatefulWidget {
  final SelectDataController selectDataController;
  // Its okay.
  // ignore: prefer-correct-identifier-length
  final DraggableScrollableController? dropdownContentModalScrollController;
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
    required this.dropdownContentModalScrollController,
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
  State<DropdownModal> createState() => _DropdownModalState();
}

class _DropdownModalState extends State<DropdownModal> {
  // Its okay, because its initialized in the same line.
  // ignore: avoid-late-keyword, prefer-correct-identifier-length
  late final draggableScrollableController =
      widget.dropdownContentModalScrollController ??
          DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: widget.dropdownModalSettings.initialChildSize,
      minChildSize: widget.dropdownModalSettings.minChildSize,
      maxChildSize: widget.dropdownModalSettings.maxChildSize,
      expand: false,
      controller: draggableScrollableController,
      builder: (BuildContext context, ScrollController scrollController) {
        return Material(
          color: Colors.transparent,
          child: DropdownContentModal(
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
            scrollController: scrollController,
            listDataViewModalBuilder: widget.listDataViewModalBuilder,
            listDataViewModalSettings: widget.listDataViewModalSettings,
            categoryItemModalBuilder: widget.categoryItemModalBuilder,
            categoryItemModalSettings: widget.categoryItemModalSettings,
            categoryNameModalBuilder: widget.categoryNameModalBuilder,
            categoryNameModalSettings: widget.categoryNameModalSettings,
            globalSettings: widget.globalSettings,
          ),
        );
      },
    );
  }
}
