import 'package:example/common/example_data.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class BasicExample6 extends StatelessWidget {
  final ScrollController scrollController;

  const BasicExample6({super.key, required this.scrollController});

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
            ),
            pillboxTitleSettings:
                const PillboxTitleSettings(title: 'Example 6'),
            titleModalSettings: const TitleModalSettings(title: 'Example 6'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Description:\n Example without scrollController\n Dropdown doesnt change position when scrolling (only desktop mode, no mobile)',
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
