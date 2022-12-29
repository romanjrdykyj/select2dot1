import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/modal/done_button_modal.dart';
import 'package:select2dot1/src/components/modal/list_data_view_modal.dart';
import 'package:select2dot1/src/components/modal/search_bar_modal.dart';
import 'package:select2dot1/src/components/modal/search_empty_info_modal.dart';
import 'package:select2dot1/src/components/modal/title_modal.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_item_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/category_name_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/done_button_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/dropdown_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/list_data_view_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_bar_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/title_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class DropdownContentModal extends StatefulWidget {
  final ScrollController scrollController;
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
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;
  final ListDataViewModalBuilder? listDataViewModalBuilder;
  final ListDataViewModalSettings listDataViewModalSettings;
  final CategoryItemModalBuilder? categoryItemModalBuilder;
  final CategoryItemModalSettings categoryItemModalSettings;
  final CategoryNameModalBuilder? categoryNameModalBuilder;
  final CategoryNameModalSettings categoryNameModalSettings;
  final GlobalSettings globalSettings;

  const DropdownContentModal({
    super.key,
    required this.scrollController,
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
  State<DropdownContentModal> createState() => _DropdownContentModalState();
}

class _DropdownContentModalState extends State<DropdownContentModal> {
  // It's good :D
  // ignore: avoid-late-keyword
  late final SearchController searchController;

  @override
  void initState() {
    super.initState();
    searchController = SearchController(widget.selectDataController.data);
    searchController.addListener(_refreshState);
  }

  @override
  void dispose() {
    searchController.removeListener(_refreshState);
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.dropdownContentModalBuilder != null) {
      // This can't be null anyways
      // ignore: avoid-non-null-assertion
      return widget.dropdownContentModalBuilder!(
        context,
        DropdownContentModalDetails(
          scrollController: widget.scrollController,
          selectDataController: widget.selectDataController,
          searchController: searchController,
          titleModal: _titleModal,
          doneButtonModal: _doneButtonModal,
          searchBarModal: _searchBarModal,
          searchEmptyInfoModal: _searchEmptyInfoModal,
          listDataViewModal: _listDataViewModal,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return Container(
      padding: widget.dropdownModalSettings.contentPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TitleModal(
                  titleModalBuilder: widget.titleModalBuilder,
                  titleModalSettings: widget.titleModalSettings,
                  globalSettings: widget.globalSettings,
                ),
              ),
              DoneButtonModal(
                doneButtonModalBuilder: widget.doneButtonModalBuilder,
                doneButtonModalSettings: widget.doneButtonModalSettings,
                globalSettings: widget.globalSettings,
              ),
            ],
          ),
          SearchBarModal(
            searchController: searchController,
            isSearchable: widget.isSearchable,
            searchBarModalBuilder: widget.searchBarModalBuilder,
            searchBarModalSettings: widget.searchBarModalSettings,
            globalSettings: widget.globalSettings,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: searchController.getResults.isEmpty
                  ? SearchEmptyInfoModal(
                      searchEmptyInfoModalBuilder:
                          widget.searchEmptyInfoModalBuilder,
                      searchEmptyInfoModalSettings:
                          widget.searchEmptyInfoModalSettings,
                      globalSettings: widget.globalSettings,
                    )
                  : ListDataViewModal(
                      scrollController: widget.scrollController,
                      searchController: searchController,
                      selectDataController: widget.selectDataController,
                      listDataViewModalBuilder: widget.listDataViewModalBuilder,
                      listDataViewModalSettings:
                          widget.listDataViewModalSettings,
                      categoryItemModalBuilder: widget.categoryItemModalBuilder,
                      categoryItemModalSettings:
                          widget.categoryItemModalSettings,
                      categoryNameModalBuilder: widget.categoryNameModalBuilder,
                      categoryNameModalSettings:
                          widget.categoryNameModalSettings,
                      globalSettings: widget.globalSettings,
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void _refreshState() {
    if (mounted) {
      // It's just call setState!
      // ignore: no-empty-block
      setState(() {});
    }
  }

  Widget _titleModal() => TitleModal(
        titleModalBuilder: widget.titleModalBuilder,
        titleModalSettings: widget.titleModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _doneButtonModal() => DoneButtonModal(
        doneButtonModalBuilder: widget.doneButtonModalBuilder,
        doneButtonModalSettings: widget.doneButtonModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _searchBarModal() => SearchBarModal(
        searchController: searchController,
        isSearchable: widget.isSearchable,
        searchBarModalBuilder: widget.searchBarModalBuilder,
        searchBarModalSettings: widget.searchBarModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _searchEmptyInfoModal() => SearchEmptyInfoModal(
        searchEmptyInfoModalBuilder: widget.searchEmptyInfoModalBuilder,
        searchEmptyInfoModalSettings: widget.searchEmptyInfoModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _listDataViewModal() => ListDataViewModal(
        scrollController: widget.scrollController,
        searchController: searchController,
        selectDataController: widget.selectDataController,
        listDataViewModalBuilder: widget.listDataViewModalBuilder,
        listDataViewModalSettings: widget.listDataViewModalSettings,
        categoryItemModalBuilder: widget.categoryItemModalBuilder,
        categoryItemModalSettings: widget.categoryItemModalSettings,
        categoryNameModalBuilder: widget.categoryNameModalBuilder,
        categoryNameModalSettings: widget.categoryNameModalSettings,
        globalSettings: widget.globalSettings,
      );
}
