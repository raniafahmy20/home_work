/**
 Q13
 Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
 each name appears. Print only the names that appear more than once.
 */
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, num> appers = {};

  int sum = 0;
  print(names);
  for (int i = 0; i < names.length - 1; i++) {
    for (int j = i + 1; j < names.length; j++) {
      if (names[i] == names[j]) {
        sum++;
      }
    }
    appers.addAll({names[i]: sum});
  }
  print(appers);
}
