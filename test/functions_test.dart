import 'package:test/test.dart';
import 'package:dart_tutorial_practice/functions.dart' as functions;

void main() {
  test('Even numbers between interval', () {
    expect(functions.evensBetweenInterval(2, 10), [2, 4, 6, 8, 10]);
  });

  test('Random password', () {
    expect(functions.randomPassword().length, 8);
  });

  test('Area of circle', () {
    expect(functions.areaOfCircle(10), 314.16);
  });

  test('Reverse string', () {
    expect(functions.reverseString('Some'), 'emoS');
    expect(functions.reverseString(''), '');
  });

  test('Power of number', () {
    expect(functions.powerOfNumber(5, 2), 25);
  });
}
