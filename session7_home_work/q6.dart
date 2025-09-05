/*
Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
 guess up to 3 times. If they fail, reveal the correct number.
*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int number = 1 + random.nextInt(20 - 1);
  int n = 0;
  print(n);
  List<int> guessNumbers = [];
  for (int i = 0; i < 3; i++) {
    print('enter number${i + 1} for guess');
    n = int.parse(stdin.readLineSync()!);
    guessNumbers.add(n);
  }
  bool check = guessNumbers.contains(number);
  if (!check) {
    print('the correct unmber is $number');
  }
}
