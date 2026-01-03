import 'package:flutter_test/flutter_test.dart';
import 'package:tddtask/string_calculator.dart';

void main() {
  test('returns 0 for empty string', () {
    var calc = StringCalculator();
    expect(calc.add(''), 0);
  });
}
