import 'dart:math';

class Hitung {
  static String calculate(String expression) {
    try {
      // Hilangkan spasi yang tidak perlu
      expression = expression.replaceAll(' ', '');

      // Menghitung hasil dari ekspresi
      final result = _evaluateExpression(expression);

      // Jika hasilnya adalah bilangan bulat, kembalikan sebagai int
      if (result is int || (result is double && result == result.toInt())) {
        return result.toInt().toString();
      }

      // Jika hasilnya adalah double, kembalikan sebagai double
      return result.toString();
    } catch (e) {
      return 'Error';
    }
  }

  static num _evaluateExpression(String expression) {
    final operators = <String>[];
    final operands = <num>[];

    final RegExp regex = RegExp(r'(\d+\.?\d*)|(\S)');
    final matches = regex.allMatches(expression);

    for (final match in matches) {
      if (match.group(1) != null) {
        operands.add(double.parse(match.group(1)!));
      } else if (match.group(2) != null) {
        final operator = match.group(2)!;
        while (operators.isNotEmpty &&
            _precedence(operator) <= _precedence(operators.last)) {
          final op = operators.removeLast();
          final right = operands.removeLast();
          final left = operands.removeLast();
          operands.add(_applyOperator(op, left, right));
        }
        operators.add(operator);
      }
    }

    while (operators.isNotEmpty) {
      final op = operators.removeLast();
      final right = operands.removeLast();
      final left = operands.removeLast();
      operands.add(_applyOperator(op, left, right));
    }

    return operands.single;
  }

  static int _precedence(String operator) {
    switch (operator) {
      case '+':
      case '-':
        return 1;
      case '*':
      case '/':
        return 2;
      default:
        return 0;
    }
  }

  static num _applyOperator(String operator, num left, num right) {
    switch (operator) {
      case '+':
        return left + right;
      case '-':
        return left - right;
      case '*':
        return left * right;
      case '/':
        return left / right;
      default:
        throw ArgumentError('Invalid operator: $operator');
    }
  }
}
