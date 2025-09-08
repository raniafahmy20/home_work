/*
Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. 
Give price a default value of 0. - Create two objects: one with a custom price and one with the
 default price. Print their details.
*/
import 'dart:io';

void main() {
  Product product1 = Product();
  product1.name = 'watch';
  print('the price of product1 =${product1.price} and name ${product1.name}');
  Product product2 = Product();
  product2.name = 'camera';
  product2.price = 70;
  print('the price of product2 =${product2.price} and name ${product2.name}');
}

class Product {
  String? name;
  int price = 0;
}
