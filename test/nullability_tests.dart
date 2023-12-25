import 'package:test/test.dart';
import 'package:dart_tutorial_practice/nullability.dart' as nullability;

void main() {
  test('Function accepting nullable value', () {
    expect(nullability.isNull(2), 2);
    expect(nullability.isNull(null), 0);
  });

  test('Random generator', () {
    expect(nullability.status, anyOf([0, 100]));
    expect(nullability.generateRandom(), anyOf([null, 100]));
  });
}
