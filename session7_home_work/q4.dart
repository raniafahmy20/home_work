/*
Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
 numbers, and then calculate the difference between them.
*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  int n;
  int largest = 0;
  int smallest = 1000000;
  for (int i = 0; i < 5; i++) {
    print('enter number${i + 1}');
    n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
    if (n > largest) {
      largest = n;
    }

    if (smallest > numbers[i]) {
      smallest = numbers[i];
    }
  }
  print('numbers:$numbers');
  int difference = largest - smallest;
  print('largest number is $largest');
  print('smallest number is $smallest');
  print('difference between largest and smallest number is $difference');
}
