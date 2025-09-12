/*
 Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
*/
import 'dart:io';

void main() {
  print('enter the number');
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  List<String> numbers = [];
  while (!(number >= 0) || !(number < 10)) {
    numbers = number.toString().split('');
    numbers.forEach((String item) {
      sum += int.parse(item);
    });
    number = sum;
    sum = 0;
  }
  print('final digit result: ${number}');
}
