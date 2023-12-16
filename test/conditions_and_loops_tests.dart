import 'package:test/test.dart';
import 'package:dart_tutorial_practice/conditions_and_loops.dart' as conditions;

void main() {
  test('Even or odd number', () {
    expect(conditions.oddOrEven(3), 'Odd');
    expect(conditions.oddOrEven(4), 'Even');
  });

  test('Vowel or Consonant', () {
    expect(conditions.vowelOrConsonant('A'), 'Vowel');
    expect(conditions.vowelOrConsonant('b'), 'Consonant');
  });

  test('Check number', () {
    expect(conditions.checkNumber(0), '0');
    expect(conditions.checkNumber(5), 'Positive');
    expect(conditions.checkNumber(-2), 'Negative');
  });
}
