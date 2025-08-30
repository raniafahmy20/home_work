/*
Q9
 Create a function that takes two integers as parameters and prints which one is larger.
*/
void main() {
  String largevariable = largeElement(300, 100);
  print(largevariable);
}

String largeElement(int n1, int n2) {
  String element = '';
  if (n1 > n2) {
    element = 'first element is large: $n1';
  } else {
    element = 'second element is large: $n2';
  }
  return element;
}
