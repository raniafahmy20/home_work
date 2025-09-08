/*
Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
 number and the second largest number (without sorting the list).
*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  int largest = 0;
  int secondLargest = 0;
  int n;
  for (int i = 0; i < 6; i++) {
    print('enter the number${i + 1}');
    n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
    if (n > largest) {
      largest = n;
    }
  }
  print('largest element in list:$largest');
  for (int item in numbers) {
    if (item != largest) {
      if (item > secondLargest) {
        secondLargest = item;
      }
    }
  }
  print('second largest element in list:$secondLargest');
}
