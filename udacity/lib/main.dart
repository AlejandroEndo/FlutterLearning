import 'package:flutter/material.dart';

import 'category_route.dart';

const IconData _icon = Icons.cake;
const String _text = 'Cake.';
const Color _color = Colors.pink;

void main() => runApp(UnitConvertApp());

class UnitConvertApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData.light(),
      home: CategoryRoute(),
    );
  }
}
