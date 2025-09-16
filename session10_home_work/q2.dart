/* Q2
 Create a class Car with private fields _brand and _year.
 - Add setters that reject empty brand names and years less than 1886 (first car invention).
 - Add getters for both.
 - In main(), demonstrate creating two car objects (one valid, one invalid input).

*/
class Car {
  int _year = 1886;
  String _brand = 'default brand';
  set brand(String brand) {
    if (!(brand.isEmpty)) {
      this._brand = brand;
    } else {
      print('InValid inPut');
    }
  }

  set year(int year) {
    if (year >= 1886) {
      this._year = year;
    } else {
      print('InValid inPut');
    }
  }

  int get year => this._year;
  String get brand => this._brand;
}

void main() {
  Car car1 = Car();
  car1.brand = 'BMW';
  car1.year = 2000;
  print('details of the car1 this year: ${car1.year} and brand: ${car1.brand}');
  Car car2 = Car();
  car2.brand = '';
  car2.year = 1800;
  print('details of the car2 this year: ${car2.year} and brand: ${car2.brand}');
}
