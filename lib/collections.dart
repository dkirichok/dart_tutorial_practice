void main(List<String> args) {
  // 1. Create an empty list of type string called days. Use the add method
  // to add names of 7 days and print all days.
  var listOfDays = <String>[];
  listOfDays.addAll([
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ]);
  print(listOfDays.join('\n'));

  // 2. Add your 7 names to the list. Use where to find a name that starts
  // with alphabet a.
  var listOfNames = ['Mason', 'Ariel', 'Macauley', 'Justine', 'Adelynn'];
  var namesStartsWithA = listOfNames.where((name) => name[0] == 'A').toList();
  print(namesStartsWithA);

  // 3. Create a map with name, age, country keys and store values to it.
  // Update country name to other country and print all keys and values.
  var profile = {'name': 'John', 'age': 25, 'country': 'USA'};
  profile['country'] = 'Canada';
  for (var key in profile.keys) {
    print('$key: ${profile[key]}');
  }
}
