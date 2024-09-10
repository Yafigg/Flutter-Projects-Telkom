import 'package:flutter/material.dart';
import 'package:widget_learn_1/row_column.dart'; // Update this import statement

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Projects',
      home: RowColum(), // Update this to use RowColumn
    );
  }
}
