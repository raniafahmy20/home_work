/*
 Q10
 Create a program with the numbers [3, 7, 2, 9, 12, 4, 6]. Print only the numbers that are divisible by
 3.
*/
void main() {
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];
  numbers.forEach((int item) {
    if (item % 3 == 0) {
      print(item);
    }
  });
}
