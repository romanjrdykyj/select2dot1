import 'package:example/common/example_data.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class BasicExample9 extends StatelessWidget {
  final ScrollController scrollController;

  const BasicExample9({super.key, required this.scrollController});

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
                SingleItemCategoryModel(
                  nameSingleItem: 'Alabama',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Arkansas',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Illonois',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Iowa',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Kansas',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Kentucky',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Louisiana',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Minnesota',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Mississippi',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Missouri',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Oklahoma',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'South Dakota',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Texas',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Tennessee',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Arizona',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Colorado',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Idaho',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Montana',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Nebraska',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'New Mexico',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'North Dakota',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Utah',
                ),
                SingleItemCategoryModel(
                  nameSingleItem: 'Wyoming',
                ),
              ],
            ),
            scrollController: scrollController,
            pillboxTitleSettings:
                const PillboxTitleSettings(title: 'Example 9'),
            titleModalSettings: const TitleModalSettings(title: 'Example 9'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('Description: Wrap layout'),
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
