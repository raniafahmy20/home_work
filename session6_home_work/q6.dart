/*
Q6
 Create a program that prints all numbers from 1 to 20, but only those divisible by 4.
*/
void main() {
  int n = 20;
  int i = 1;
  while (i <= 20) {
    if (i % 4 == 0) {
      print(i);
    }
    i++;
  }
}
