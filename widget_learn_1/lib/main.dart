import 'package:flutter/material.dart';
import 'package:widget_learn_1/widget-row_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Projects',
      home: const ColumnRow(),
    );
  }
}
