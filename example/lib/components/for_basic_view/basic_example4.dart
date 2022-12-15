import 'package:example/common/example_data.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class BasicExample4 extends StatelessWidget {
  final ScrollController scrollController;

  const BasicExample4({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Select2dot1(
            selectDataController: SelectDataController(
              data: ExampleData.exampleData2,
              initSelected: const [
                SingleItemCategoryModel(nameSingleItem: 'Alaska'),
                SingleItemCategoryModel(nameSingleItem: 'California'),
              ],
            ),
            selectSingleSettings:
                const SelectSingleSettings(showExtraInfo: false),
            categoryItemModalSettings: const CategoryItemModalSettings(
              showExtraInfo: false,
            ),
            categoryItemOverlaySettings: const CategoryItemOverlaySettings(
              showExtraInfo: false,
            ),
            scrollController: scrollController,
            pillboxTitleSettings:
                const PillboxTitleSettings(title: 'Example 4'),
            titleModalSettings: const TitleModalSettings(title: 'Example 4'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Multi select example with initial selected items, group option and searchbar; without avatar and extra info',
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
