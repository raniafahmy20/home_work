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
