/*
Q11
Create a program with the numbers a = 7, b = 7, c = 10. Check the rule 'a is not equal to c OR b is
 greater than or equal to a'. Print whether the rule is true or false.
*/
void main() {
  int a = 7;
  int b = 7;
  int c = 10;
  // is true
  bool aNotEqulaToc = a != c;
  // is false
  bool bGratterThanOrEquala = b >= a;
  // true or false = true
  bool rule = aNotEqulaToc || bGratterThanOrEquala;
  print(rule);
}
