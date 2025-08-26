/*
Q7
 Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
 and print the total.
*/
void main() {
  List<int> scores = [10, 0, 20, 30];
  int add = 0;
  scores.forEach((int item) {
    if (item != 0) {
      add += item;
    }
  });
  print('total is $add');
}
