/*
Question 9
 Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
 count with the original list length and print a message if duplicates were removed.
*/
void main() {
  List ages = [22, 33, 44, 44, 55, 55, 66];
  Set ageNew = ages.toSet();
  print(ageNew);
  bool count = ages.length == ageNew.length;
  if (!count) {
    print('duplicates were removed');
  }
}
