import 'package:example/common/example_data.dart';
import 'package:example/components/for_custom_view.dart/custom_select2dot1.dart';
import 'package:flutter/material.dart';

class CustomExample3 extends StatelessWidget {
  final ScrollController scrollController;

  const CustomExample3({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomSelect2dot1(
        title: 'Example 3',
        data: ExampleData.exampleData1,
        isMultiSelect: false,
        avatarInSingleSelect: true,
        extraInfoInSingleSelect: true,
        extraInfoInDropdown: true,
        scrollController: scrollController,
      ),
    );
  }
}
