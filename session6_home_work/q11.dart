/*
Q11
Create a function that takes a required product name and an optional discount percentage. If the
 discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'.
*/
void main() {
  product(productName: 'phone');
  product(productName: 'television', discount: 50);
}

void product({required String productName, num discount = 0}) {
  if (discount != 0) {
    print('${productName} has discount $discount%');
  } else {
    print('${productName} has no discount');
  }
}
