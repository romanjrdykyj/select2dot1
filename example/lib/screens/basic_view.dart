import 'package:example/components/for_basic_view/basic_example0.dart';
import 'package:example/components/for_basic_view/basic_example1.dart';
import 'package:example/components/for_basic_view/basic_example10.dart';
import 'package:example/components/for_basic_view/basic_example11.dart';
import 'package:example/components/for_basic_view/basic_example2.dart';
import 'package:example/components/for_basic_view/basic_example3.dart';
import 'package:example/components/for_basic_view/basic_example4.dart';
import 'package:example/components/for_basic_view/basic_example5.dart';
import 'package:example/components/for_basic_view/basic_example6.dart';
import 'package:example/components/for_basic_view/basic_example7.dart';
import 'package:example/components/for_basic_view/basic_example8.dart';
import 'package:example/components/for_basic_view/basic_example9.dart';
import 'package:flutter/material.dart';

class BasicView extends StatefulWidget {
  static const String routeName = 'menu/basic_view';
  const BasicView({super.key});

  @override
  State<BasicView> createState() => _BasicViewState();
}

class _BasicViewState extends State<BasicView> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            BasicExample0(scrollController: scrollController),
            BasicExample1(scrollController: scrollController),
            BasicExample2(scrollController: scrollController),
            BasicExample3(scrollController: scrollController),
            BasicExample4(scrollController: scrollController),
            BasicExample5(scrollController: scrollController),
            BasicExample6(scrollController: scrollController),
            BasicExample7(scrollController: scrollController),
            BasicExample8(scrollController: scrollController),
            BasicExample9(scrollController: scrollController),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: BasicExample10(
                    scrollController: scrollController,
                  ),
                ),
                Expanded(
                  child: BasicExample11(
                    scrollController: scrollController,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
