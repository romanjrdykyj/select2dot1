import 'package:example/screens/basic_view.dart';
import 'package:example/screens/custom_view.dart';
import 'package:example/screens/menu.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select2dot1 Example',
      initialRoute: Menu.routeName,
      routes: <String, WidgetBuilder>{
        Menu.routeName: (context) => const Menu(),
        BasicView.routeName: (context) => const BasicView(),
        CustomView.routeName: (context) => const CustomView(),
      },
    );
  }
}
