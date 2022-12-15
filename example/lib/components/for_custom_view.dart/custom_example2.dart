import 'package:example/common/example_data.dart';
import 'package:example/components/for_custom_view.dart/custom_select2dot1.dart';
import 'package:flutter/material.dart';

class CustomExample2 extends StatelessWidget {
  final ScrollController scrollController;

  const CustomExample2({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomSelect2dot1(
        title: 'Example 2',
        data: ExampleData.exampleData4,
        isMultiSelect: true,
        avatarInSingleSelect: false,
        extraInfoInSingleSelect: true,
        extraInfoInDropdown: true,
        scrollController: scrollController,
      ),
    );
  }
}
