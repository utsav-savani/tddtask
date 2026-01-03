# String Calculator TDD Kata

A Dart implementation of the String Calculator kata demonstrating strict Test-Driven Development (TDD) methodology.

## Project Overview

This project implements a String Calculator that adds numbers from a string input. The implementation follows the **Red-Green-Refactor** TDD cycle, where each feature is developed incrementally with:

1. **RED** - Write a failing test first
2. **GREEN** - Write minimal code to make the test pass
3. **REFACTOR** - Clean up the code while keeping tests green

## Features Implemented

| # | Feature | Description |
|---|---------|-------------|
| 1 | Empty String | Returns `0` for empty input |
| 2 | Single Number | Returns the number for single digit input |
| 3 | Two Numbers | Returns sum of two comma-separated numbers |
| 4 | Multiple Numbers | Handles any amount of numbers |
| 5 | Newline Delimiter | Supports `\n` as delimiter |
| 6 | Custom Delimiter | Supports `//[delimiter]\n` syntax |
| 7 | Negative Numbers | Throws exception with all negatives listed |
| 8 | Ignore > 1000 | Numbers greater than 1000 are ignored |
| 9 | Multi-char Delimiter | Supports `//[***]\n` syntax |
| 10 | Multiple Delimiters | Supports `//[*][%]\n` syntax |

## Usage Examples

```dart
import 'package:tddtask/string_calculator.dart';

void main() {
  final calc = StringCalculator();

  // Basic usage
  print(calc.add(''));           // 0
  print(calc.add('1'));          // 1
  print(calc.add('1,2'));        // 3
  print(calc.add('1,2,3,4,5'));  // 15

  // Newline delimiter
  print(calc.add('1\n2,3'));     // 6

  // Custom delimiter
  print(calc.add('//;\n1;2'));   // 3

  // Ignore numbers > 1000
  print(calc.add('2,1001'));     // 2

  // Multi-character delimiter
  print(calc.add('//[***]\n1***2***3'));  // 6

  // Multiple delimiters
  print(calc.add('//[*][%]\n1*2%3'));     // 6

  // Negative numbers throw exception
  try {
    calc.add('-1,2,-3');
  } catch (e) {
    print(e);  // negative numbers not allowed -1,-3
  }
}
```

## Project Structure

```
tddtask/
├── lib/
│   └── string_calculator.dart    # Main implementation
├── test/
│   └── string_calculator_test.dart   # Unit tests
├── pubspec.yaml
├── analysis_options.yaml
└── README.md
```

## Running Tests

```bash
# Run all tests
flutter test

# Run tests with verbose output
flutter test --reporter expanded

# Run with coverage
flutter test --coverage
```

## Test Results

```
✓ add returns 0 for empty string
✓ add returns the number for single number
✓ add returns sum for two numbers
✓ add handles multiple numbers
✓ add handles newline as delimiter
✓ add supports custom single char delimiter
✓ add throws on negative numbers
✓ add shows all negatives in exception
✓ add ignores numbers bigger than 1000
✓ add supports multi-char delimiter
✓ add supports multiple delimiters
✓ add supports multiple multi-char delimiters

All 12 tests passed!
```

## TDD Commit History

Each feature follows the RED-GREEN-REFACTOR pattern:

```
RED:      Write failing test
GREEN:    Implement to pass
REFACTOR: Clean up code
```

Example for "empty string returns 0":
1. `RED: test empty string returns 0` - Test fails (no class exists)
2. `GREEN: implement StringCalculator with add method` - Test passes
3. `REFACTOR: add documentation to StringCalculator` - Code cleaned

## Requirements

- Dart SDK: ^3.10.3
- Flutter: 3.38.4+

## Author

Utsav Savani
