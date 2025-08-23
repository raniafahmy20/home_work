/*
 Question 19
 Write a Dart program that converts a list of names to a set of unique values. Create a map with
 counts of occurrences. Compare lengths and print a message if a specific name appears more than
 once.
*/

void main() {
  List<String> name = [
    'amged',
    'amged',
    'amged',
    'amira',
    'maged',
    'maged',
    'mina'
  ];
  Set<String> newName = name.toSet();
  Map<String, int> occurrences = {
    'amged': 3,
    'amira': 1,
    'maged': 2,
    'mina': 1
  };
  bool lengthListHigherThanSet = (name.length > newName.length);
  bool lengthSetEqualMap = (newName.length == occurrences.length);
  bool compareLength = lengthListHigherThanSet && lengthSetEqualMap;

  print(
      'length of list is higher than set And Length Set Equal Length Set is $compareLength ');

  if (occurrences.containsValue(2)) {
    print(
        '${occurrences.keys.firstWhere((k) => occurrences[k] == 2)} is appears twise');
  }
  if (occurrences.containsValue(3)) {
    print(
        '${occurrences.keys.firstWhere((k) => occurrences[k] == 3)} is appears three times');
  }
}
