/*
Q6
 Create a program that calculates the factorial of 6 and prints the result.
*/
void main() {
  int fact = 1;
  int number = 6;
  int i = 1;
  while (i < number + 1) {
    fact *= i;
    i++;
  }
  print(fact);
}
