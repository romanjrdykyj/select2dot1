import 'package:example/my_app.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

void main() {
  // To see all example available on https://select2dot1.site,
  // you have to download the source code available on https://github.com/romanjrdykyj/select2dot1
  // and go to folder example.
  runApp(const MyApp());
  // runApp(const SimpleExampleApp());
}

// Below you can see the code for the simple example app, but it is not included in the example available on https://select2dot1.site

class SimpleExampleApp extends StatefulWidget {
  const SimpleExampleApp({super.key});

  @override
  State<SimpleExampleApp> createState() => _SimpleExampleAppState();
}

class _SimpleExampleAppState extends State<SimpleExampleApp> {
  ScrollController scrollController = ScrollController();

  static const List<SingleCategoryModel> exampleData = [
    SingleCategoryModel(
      nameCategory: 'Central Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(
          nameSingleItem: 'Alabama',
          extraInfoSingleItem: '1395 Lincoln Street',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text('AL', style: TextStyle(color: Colors.white)),
          ),
        ),
        SingleItemCategoryModel(nameSingleItem: 'Arkansas'),
        SingleItemCategoryModel(nameSingleItem: 'Illonois'),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Pacific Time Zone',
      singleItemCategoryList: [
        SingleItemCategoryModel(nameSingleItem: 'California'),
        SingleItemCategoryModel(nameSingleItem: 'Nevada'),
        SingleItemCategoryModel(nameSingleItem: 'Oregon'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Example'),
          titleTextStyle: const TextStyle(
            color: Color(0xff001029),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          foregroundColor: const Color(0xff001029),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Select2dot1(
                    selectDataController: SelectDataController(
                      data: exampleData,
                    ),
                    scrollController: scrollController,
                  ),
                ),
                const SizedBox(height: 250),
                Select2dot1(
                  selectDataController: SelectDataController(
                    data: exampleData,
                    initSelected: const [
                      SingleItemCategoryModel(
                        nameSingleItem: 'Oregon',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 250),
                Select2dot1(
                  selectDataController: SelectDataController(
                    data: exampleData,
                    isMultiSelect: false,
                    initSelected: const [
                      SingleItemCategoryModel(nameSingleItem: 'Arkansas')
                    ],
                  ),
                  scrollController: scrollController,
                ),
                const SizedBox(height: 250),
                Select2dot1(
                  selectDataController: SelectDataController(
                    data: exampleData,
                    initSelected: const [
                      SingleItemCategoryModel(nameSingleItem: 'Illonois'),
                      SingleItemCategoryModel(nameSingleItem: 'California'),
                      SingleItemCategoryModel(nameSingleItem: 'Alabama'),
                    ],
                  ),
                  pillboxContentMultiSettings:
                      const PillboxContentMultiSettings(pillboxOverload: 5),
                  selectSingleSettings:
                      const SelectSingleSettings(showExtraInfo: false),
                  categoryItemModalSettings: const CategoryItemModalSettings(
                    showExtraInfo: false,
                  ),
                  categoryItemOverlaySettings:
                      const CategoryItemOverlaySettings(
                    showExtraInfo: false,
                  ),
                  scrollController: scrollController,
                  pillboxTitleSettings:
                      const PillboxTitleSettings(title: 'Example 7'),
                  titleModalSettings:
                      const TitleModalSettings(title: 'Example 7'),
                ),
                const SizedBox(height: 250),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
