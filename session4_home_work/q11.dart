/*
Question 11
 Write a Dart program that applies discounts to a price. Use nested if/else to apply different
 discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
 Print the final price.
*/
void main() {
  double price = 1000;
  double discount = 0;
  String user = 'student';
  if (user == 'student') {
    discount = (25 / 100) * price;
    price = price - discount;
  } else if (user == 'has a coupon') {
    discount = (50 / 100) * price;
    price = price - discount;
  } else if (price > 2000) {
    discount = (75 / 100) * price;
    price = price - discount;
  }
  print('final price: $price');
}
