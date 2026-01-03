import 'package:flutter_test/flutter_test.dart';
import 'package:tddtask/string_calculator.dart';

void main() {
  test('returns 0 for empty string', () {
    var calc = StringCalculator();
    expect(calc.add(''), 0);
  });

  test('returns the number for single number', () {
    var calc = StringCalculator();
    expect(calc.add('1'), 1);
  });

  test('returns sum for two comma-separated numbers', () {
    var calc = StringCalculator();
    expect(calc.add('1,2'), 3);
  });
}
