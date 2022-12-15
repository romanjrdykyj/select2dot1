import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/modal/dropdown_content_modal.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_item_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/category_name_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/done_button_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/dropdown_content_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/list_data_view_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_bar_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/title_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class DropdownModal extends StatefulWidget {
  final SelectDataController selectDataController;
  final DropdownContentModalBuilder? dropdownContentModalBuilder;
  final DropdownContentModalSettings dropdownContentModalSettings;
  final TitleModalBuilder? titleModalBuilder;
  final TitleModalSettings titleModalSettings;
  final DoneButtonModalBuilder? doneButtonModalBuilder;
  final DoneButtonModalSettings doneButtonModalSettings;

  final bool isSearchable;
  final SearchBarModalBuilder? searchBarModalBuilder;
  final SearchBarModalSettings searchBarModalSettings;
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
    required this.dropdownContentModalSettings,
    required this.titleModalBuilder,
    required this.titleModalSettings,
    required this.doneButtonModalBuilder,
    required this.doneButtonModalSettings,
    required this.isSearchable,
    required this.searchBarModalBuilder,
    required this.searchBarModalSettings,
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
  @override
  void initState() {
    super.initState();
    widget.selectDataController.addListener(_refreshState);
  }

  @override
  void dispose() {
    widget.selectDataController.removeListener(_refreshState);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: widget.dropdownContentModalSettings.initialChildSize,
      minChildSize: widget.dropdownContentModalSettings.minChildSize,
      maxChildSize: widget.dropdownContentModalSettings.maxChildSize,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return Material(
          color: Colors.transparent,
          child: DropdownContentModal(
            selectDataController: widget.selectDataController,
            dropdownContentModalBuilder: widget.dropdownContentModalBuilder,
            dropdownContentModalSettings: widget.dropdownContentModalSettings,
            titleModalBuilder: widget.titleModalBuilder,
            titleModalSettings: widget.titleModalSettings,
            doneButtonModalBuilder: widget.doneButtonModalBuilder,
            doneButtonModalSettings: widget.doneButtonModalSettings,
            isSearchable: widget.isSearchable,
            searchBarModalBuilder: widget.searchBarModalBuilder,
            searchBarModalSettings: widget.searchBarModalSettings,
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

  void _refreshState() {
    if (mounted) {
      // It's just call setState!
      // ignore: no-empty-block
      setState(() {});
    }
  }
}
