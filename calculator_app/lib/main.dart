import 'package:flutter/material.dart';
import 'hitung.dart';
import 'widgets/button.dart';
import 'widgets/display.dart';
import 'widgets/button_row.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String display = '0';
  String expression = '';

  void _onButtonPressed(String value) {
    setState(() {
      if (value == 'C') {
        display = '0';
        expression = '';
      } else if (value == '=') {
        try {
          display = Hitung.calculate(expression);
        } catch (e) {
          display = 'Error';
        }
      } else {
        if (display == '0' && value != '.') {
          display = value;
        } else {
          display += value;
        }
        expression += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Display(text: display),
          const Divider(),
          ButtonRow(
            buttons: ['C', '()', '%', '/'],
            onPressed: _onButtonPressed,
          ),
          ButtonRow(
            buttons: ['7', '8', '9', '*'],
            onPressed: _onButtonPressed,
          ),
          ButtonRow(
            buttons: ['4', '5', '6', '-'],
            onPressed: _onButtonPressed,
          ),
          ButtonRow(
            buttons: ['1', '2', '3', '+'],
            onPressed: _onButtonPressed,
          ),
          ButtonRow(
            buttons: ['0', '00', '.', '='],
            onPressed: _onButtonPressed,
          ),
        ],
      ),
    );
  }
}
