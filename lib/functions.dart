import 'dart:math';

// 1. Write a function in Dart to print even numbers between intervals
List<int> evensBetweenInterval(int start, int end) {
  return List.generate((end - start + 1), (i) => i + start)
      .where((e) => e.isEven)
      .toList();
}

// 2. Write a function in Dart that generates random password.
String randomPassword([int length = 8]) {
  return List.generate(length, (_) => Random().nextBool()
    ? Random().nextInt(9)
    : String.fromCharCode(97 + Random().nextInt(122 - 97)))
    .map((e) => e is String && Random().nextBool() ? e.toUpperCase() : e)
    .join('');
}

// 3. Write a function in Dart that find the area of a circle and round result
// to 2 decimals
double areaOfCircle(int radius) {
  return double.parse((pi * pow(radius, 2)).toStringAsFixed(2));
}

// 4. Write a function in Dart to reverse a String
String reverseString(String str) => str.split('').reversed.join('');

// 5. Write a function in Dart to calculate power of a certain number (5^3=125)
int powerOfNumber(int number, int power) => pow(number, power).toInt();
