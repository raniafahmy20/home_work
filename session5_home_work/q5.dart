/*
Q5
 Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
*/
void main() {
  String tagPrice = 'EGP 12.50';
  String s = tagPrice.substring(4);
  double d = double.parse(s);
  print(d);
}
