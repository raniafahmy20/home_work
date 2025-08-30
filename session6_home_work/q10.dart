/*
 Q10
 Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
 returned value.
*/
void main() {
  print(sumNumbers(20));
}

int sumNumbers(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}
