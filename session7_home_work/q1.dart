/**
   Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
 Then, check if the average is greater than 50 or not.
 */
import 'dart:io';

void main() {
  List<int> numbers = [];
  num sum = 0;
  num average = 0;
  bool check;
  int n = 0;
  for (int i = 0; i < 3; i++) {
    print("enter number${i + 1}");
    n = int.parse(stdin.readLineSync()!);
    numbers.add(n);
    sum += numbers[i];
  }
  average = sum / numbers.length;
  print('sumattion is $sum');
  print('average is $average');
  check = average > 50;
  print('average is greater than 50 :$check');
}
