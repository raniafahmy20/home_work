/*
Q1
 Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how
 many unique numbers remain.
*/
void main() {
  List numbers = [5, 3, 5, 7, 3, 9];
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        numbers.removeAt(j);
      }
    }
  }
  print(numbers);
  print('length of list after removed duplicate ${numbers.length}');
}
