import 'dart:async';

import 'package:example/components/menu_option_button.dart';
import 'package:example/screens/basic_view.dart';
import 'package:example/screens/custom_view.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  static const String routeName = 'menu';

  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select2dot1 Example'),
        titleTextStyle: const TextStyle(
          color: Color(0xff001029),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        backgroundColor: const Color(0xFFEDEBF2),
        shadowColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFFEDEBF2),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                MenuOptionButton(
                  title: 'Basic example',
                  onTap: () => unawaited(
                    Navigator.pushNamed(context, BasicView.routeName),
                  ),
                ),
                MenuOptionButton(
                  title: 'Custom example',
                  onTap: () => unawaited(
                    Navigator.pushNamed(context, CustomView.routeName),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
