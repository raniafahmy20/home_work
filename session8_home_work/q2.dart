/*
Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
 to set the values when creating the object. - In main(), create two car objects with different data and
 print their details.
 */
class Car {
  String? brand;
  int? year;
  Car({required String brand, required int year}) {
    this.brand = brand;
    this.year = year;
  }
}

void main() {
  Car car1 = Car(brand: 'BMW', year: 2001);
  Car car2 = Car(brand: 'Toyota', year: 2002);
  print('the brand of car1 is ${car1.brand} and year of car1 is ${car1.year}');
  print('the brand of car2 is ${car2.brand} and year of car2 is ${car2.year}');
}
