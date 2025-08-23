/*
Question 17
 Write a Dart program that formats a price tag string with a currency. Apply string methods such as
 toString, padLeft, and length to format and compare the results.
*/
void main() {
  double price = 22;
  String priceTag = '$price EGP';
  print(priceTag.toString());
  print(priceTag.padLeft(20));
  print(priceTag.length);
  bool compareLength = priceTag.length > price.toString().length;
  print('length of price tag is higher than price is $compareLength');
}
