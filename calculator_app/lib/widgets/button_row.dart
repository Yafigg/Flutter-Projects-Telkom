import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  final List<String> buttons;
  final Function(String) onPressed;

  const ButtonRow({
    Key? key,
    required this.buttons,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttons.map((btn) {
        return Button(label: btn, onPressed: onPressed);
      }).toList(),
    );
  }
}
