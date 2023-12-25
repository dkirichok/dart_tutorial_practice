import 'dart:math';

// 1. Write a function that accepts a nullable int parameter and returns 0 if
// the value is null using null coalescing operator ??.

int isNull(int? a) => a ?? 0;

// 2. Write a function named generateRandom() in dart that randomly returns 100 or null.
// Also, assign a return value of the function to a variable named status that can’t
// be null. Give status a default value of 0, if generateRandom() function returns null.

int status = generateRandom() ?? 0;

int? generateRandom() {
  return Random().nextBool() ? 100 : null;
}
