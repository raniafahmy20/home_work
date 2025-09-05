/*
 Q2. Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1
 and n, and also print how many odd numbers were found.
*/
import 'dart:io';

void main() {
  print('enter the number');
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      sum++;
    }
  }
  print('the number of odd number is $sum');
}
