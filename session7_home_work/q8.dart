/*
Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
 print the largest digit.
*/
import 'dart:ffi';
import 'dart:io';

void main() {
  print('enter the number');
  int number = int.parse(stdin.readLineSync()!);
  String digit = number.toString();
  List<String> digits = digit.split('');
  print(digits);
  int sum = 0;
  int largeDigit = 0;
  digits.forEach((String item) {
    int number = int.parse(item);
    sum += number;
    if (number > largeDigit) {
      largeDigit = number;
    }
  });
  print('sum of digits is $sum');
  print('large digits is $largeDigit');
}
