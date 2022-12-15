import 'package:example/components/for_custom_view.dart/custom_example0.dart';
import 'package:example/components/for_custom_view.dart/custom_example1.dart';
import 'package:example/components/for_custom_view.dart/custom_example2.dart';
import 'package:example/components/for_custom_view.dart/custom_example3.dart';
import 'package:example/components/for_custom_view.dart/custom_example4.dart';
import 'package:flutter/material.dart';

class CustomView extends StatefulWidget {
  static const String routeName = 'menu/custom_view';

  const CustomView({super.key});

  @override
  State<CustomView> createState() => _CustomViewState();
}

class _CustomViewState extends State<CustomView> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Example'),
        backgroundColor: const Color(0xff001029),
        shadowColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xff001029),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Center(
          child: Column(
            children: [
              CustomExample0(
                scrollController: scrollController,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomExample1(
                scrollController: scrollController,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomExample2(
                scrollController: scrollController,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomExample3(
                scrollController: scrollController,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomExample4(
                scrollController: scrollController,
              ),
              const SizedBox(
                height: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
