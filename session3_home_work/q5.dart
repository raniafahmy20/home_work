/*
Exercise 5:
 5. a) Declare two integers a and b.
 b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b.
 c) Declare int sum = a + b; check if sum equals 20 and print the boolean result.
*/
void main() {
  int a = 10;
  int b = 5;
  bool aEqualb = a == b;
  bool aNotEqualb = a != b;
  bool aHigherb = a > b;
  bool aSmallerb = a < b;
  bool aHigehrOrEqualb = a >= b;
  bool aSmallerOrEqualb = a <= b;
  print(
      'A==B:$aEqualb \t A!B:$aNotEqualb \t A>B:$aHigherb \t A<B:$aSmallerb \t A>=B:$aHigehrOrEqualb \t A<=B:$aSmallerOrEqualb ');
  int sum = a + b;
  print(sum == 20);
}
