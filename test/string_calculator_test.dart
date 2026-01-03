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

  test('handles multiple numbers', () {
    var calc = StringCalculator();
    expect(calc.add('1,2,3'), 6);
  });

  test('handles newline as delimiter', () {
    var calc = StringCalculator();
    expect(calc.add('1\n2,3'), 6);
  });

  test('supports custom single-char delimiter', () {
    var calc = StringCalculator();
    expect(calc.add('//;\n1;2'), 3);
  });

  test('throws exception for negative numbers', () {
    var calc = StringCalculator();
    expect(() => calc.add('-1,2'), throwsA(isA<Exception>()));
  });
}
