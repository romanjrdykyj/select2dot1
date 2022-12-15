import 'package:example/common/example_data.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class BasicExample8 extends StatelessWidget {
  final ScrollController scrollController;

  const BasicExample8({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Select2dot1(
            selectDataController: SelectDataController(
              data: ExampleData.exampleData3,
              initSelected: const [
                SingleItemCategoryModel(
                  nameSingleItem: 'Alabama',
                  value: 'Alabama1',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Alabama',
                  value: 'Alabama2',
                ),
                SingleItemCategoryModel(nameSingleItem: 'Mississippi'),
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
                const PillboxTitleSettings(title: 'Example 8'),
            titleModalSettings: const TitleModalSettings(title: 'Example 8'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Description:\n NO group\n This is a example with two option with the same name but with different value',
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
