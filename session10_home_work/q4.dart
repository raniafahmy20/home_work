/* Q4
 Create a class Product with private fields _name and _price.
 - Reject empty names and negative prices in setters.
 - Add a computed getter discountedPrice that returns the price with a 10% discount applied.
 - In main(), demonstrate setting values and printing the original and discounted price.
*/
class Product {
  String _name = 'default';
  num _price = 0;

  set name(String name) {
    if (!name.isEmpty) {
      this._name = name;
    }
  }

  set price(num price) {
    if (price >= 0) {
      this._price = price;
    }
  }

  num get price => this._price;
  num get discountedPrice => this._price - (this._price * 10 / 100);
}

void main() {
  Product product = Product();
  product.name = 'machine';
  product.price = 500;
  print('original price: ${product.price}');
  print('discounted price: ${product.discountedPrice}');
}
