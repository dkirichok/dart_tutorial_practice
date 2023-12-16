// 1. Write a dart function to check if the number is odd or even.
String oddOrEven(int number) => number.isEven ? 'Even' : 'Odd';

// 2. Write a dart function to check whether a character is a vowel or consonant.
String vowelOrConsonant(String char) =>
    'aeiou'.contains(char.toLowerCase()) ? 'Vowel' : 'Consonant';

// 3. Write a dart function to check whether a number is positive, negative, or 0.
String checkNumber(int number) {
  if (number == 0) return '0';  
  return number > 0 ? 'Positive' : 'Negative';
}

// 4. Write a dart function to generate multiplication tables of 5.
String multiplicateByFive() {
  var listOfResults = [];
  for (var i = 1; i < 10; i++) {
    listOfResults.add('$i x 5 = ${i * 5}');
  }
  return listOfResults.join('\n');
}

// 5. Write a dart function to print 1 to 20 but not 10.
void printNumbers() {
  for (var i = 1; i <= 20; i++) {
    if (i == 10) continue;
    print(i);
  }
}
